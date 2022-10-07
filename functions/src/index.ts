import * as functions from "firebase-functions";
const admin = require("firebase-admin");
admin.initializeApp();
import * as dotenv from "dotenv";
dotenv.config();
const db = admin.firestore();
const axios = require("axios").default;
const cors = require("cors")({ origin: true });
import * as firestore from "@google-cloud/firestore";

import Email = require("./email");
export function eventsCollectionRef(): FirebaseFirestore.CollectionReference<FirebaseFirestore.DocumentData> {
  return db.collection("events");
}

export function eventDocRef(
  eventId: string
): FirebaseFirestore.DocumentReference {
  return eventsCollectionRef().doc(eventId);
}

export function statsLogCollection(): FirebaseFirestore.CollectionReference<FirebaseFirestore.DocumentData> {
  return db.collection("statsLog");
}

export function statusDocRef(): FirebaseFirestore.DocumentReference {
  return db.collection("stats").doc("status");
}

export const checkEventUrl = functions
  .region("europe-west3")
  .https.onRequest(
    async (request: functions.https.Request, response: functions.Response) => {
      cors(request, response, async () => {
        console.log(request.body);

        if (request.method !== "GET") {
          response.status(403).send("Forbidden!");
          return;
        }

        const eventId = request.query.eventId;

        console.log("eventId from request: " + eventId);
        if (eventId == null || typeof eventId !== "string") {
          const message = "eventId are missing";
          console.error(message);
          response.status(400).send("invalid-argument");
          return;
        }

        const eventDoc = await eventDocRef(eventId).get();

        if (eventDoc.exists) {
          console.log("event exists");
          const eventData = eventDoc.data();
          if (eventData != null) {
            console.log(eventData);
            response.send({
              status: "exists",
              event: {
                id: eventData.id,
                name: eventData.name,
                location: {
                  _latitude: eventData.location.latitude,
                  _longitude: eventData.location.longitude,
                },
                averageAge: eventData.averageAge,
                participants: eventData.participants,
                loc: eventData.loc,
                status: eventData.status,
                typeOfCode: eventData.typeOfCode,
              },
            });
          } else {
            response.sendStatus(404);
          }
          return;
        } else {
          const res = await axios.get(
            "https://codeweek.eu/api/event-detail/" + eventId
          );
          console.log(res.status);

          if (res.status == 200) {
            console.log(res.data);
            const title = res.data.data.title;
            const startDateString = res.data.data.start_date;
            const endDateString = res.data.data.end_date;
            const geoposition = res.data.data.geoposition;
            if (
              title == null ||
              startDateString == null ||
              endDateString == null ||
              geoposition == null
            ) {
              response.sendStatus(400);
              return;
            }
            const geo = geoposition.split(",", 2);

            const lat = +geo[0];
            const long = +geo[1];

            //const eventIdNumber = +eventId;
            const startDate = new Date(startDateString);
            const eventYear = startDate.getFullYear();
            //const endDate = new Date(endDateString);

            if (eventYear < 2022) {
              //if (date.getFullYear() < 2022) {
              response.send({
                status: "old_event",
              });
              return;
            }
            /*
            const now = new Date();
          

            if (now > endDate) {
              //passato
            } else if (now < startDate) {
              //futuro
              response.send({
                status: "not_exists",
                event: {
                  id: eventId,
                  name: title,
                  date: startDate,
                  location: {
                    _latitude: lat,
                    _longitude: long,
                  },
                  status: "unknown",
                },
              });
            } else if (now > startDate && now < endDate) {
              //attuale
              response.send({
                status: "not_exists",
                event: {
                  id: eventId,
                  name: title,
                  date: startDate,
                  location: {
                    _latitude: lat,
                    _longitude: long,
                  },
                  status: "unknown",
                },
              });
            }
          
            //today.getFullYear() === date.getFullYear() &&
            //today.getMonth() === date.getMonth() &&
            //today.getDate() === date.getDate();

            //L'ideale sarebbe prendere start date e end date (sono giorno) per decidere se è attuale (> start e < end); futuro (< start); passato (> end).
            if (isToday(date)) {
              response.send({
                status: "not_exists",
                event: {
                  id: eventId,
                  name: title,
                  date: startDate,
                  location: {
                    _latitude: lat,
                    _longitude: long,
                  },
                  status: "unknown",
                },
              });
            } else {
            }
            */

            response.send({
              status: "not_exists",
              event: {
                id: eventId,
                name: title,
                startDate: startDateString,
                endDate: endDateString,
                location: {
                  _latitude: lat,
                  _longitude: long,
                },
                status: "unknown",
              },
            });
            /*await eventDocRef(eventId).set({
            id: eventId,
            name: response.data.title,
            latitude: lat,
            longitude: long,
          });*/
          } else {
            response.sendStatus(400);
          }
        }
      });
    }
  );

export const onEventEdited = functions
  .region("europe-west3")
  .firestore.document("events/{eventId}")
  .onWrite(async (change, context) => {
    const previousEvent: FirebaseFirestore.DocumentData | undefined =
      change.before.data();
    const event: FirebaseFirestore.DocumentData | undefined =
      change.after.data();
    if (change.before.exists && !change.after.exists) {
      console.log("event removed from db");

      await statusDocRef().update({
        liveEventsCount: firestore.FieldValue.increment(-1),
      });

      return;
    } else if (!change.before.exists && change.after.exists) {
      console.log("event added on db");

      if (event != null && event?.status == "off") {
        var loc = 0;
        var participants = 0;
        if (event.loc != null) {
          loc = event.loc;
        }
        if (event.participants != null) {
          participants = event.participants;
        }
        await statusDocRef().update({
          loc: firestore.FieldValue.increment(loc),
          participants: firestore.FieldValue.increment(participants),
        });
      } else {
        await statusDocRef().update({
          liveEventsCount: firestore.FieldValue.increment(1),
        });
      }
      return;
    }

    if (previousEvent == null || event == null) {
      console.log("data is null");
      return;
    }

    if (previousEvent.status === "on" && event.status === "off") {
      console.log("event " + event.id + " turned off");
      await statusDocRef().update({
        liveEventsCount: firestore.FieldValue.increment(-1),
        loc: firestore.FieldValue.increment(event.loc),
        participants: firestore.FieldValue.increment(event.participants),
      });
      return;
    }
  });

export const closeEventsCron = functions
  .region("europe-west3")
  .pubsub.schedule("0 0 * * *")
  //.pubsub.schedule("0 0 * * *")
  .timeZone("Etc/UTC")
  .onRun(async (_) => {
    const now = new Date();
    console.log("This will be run every day at 00:00 UTC " + now.toISOString());

    //prendo tutti gli eventi attivi
    const querySnapshot = await eventsCollectionRef()
      .where("status", "==", "on")
      .get();

    querySnapshot.forEach(
      async (doc: FirebaseFirestore.QueryDocumentSnapshot) => {
        console.log("opened event : " + doc.id);

        const docRef = doc.ref;
        await docRef.update({
          status: "off",
          loc: 0,
          averageAge: 0,
          participants: 0,
        });
      }
    );
  });

/*
function dateToUTC(date: Date) {
  const utcDate = new Date(date.toUTCString().slice(0, -4));
  return utcDate;
}*/

export const logOpenedEvents = functions
  .region("europe-west3")
  .pubsub.schedule("every 30 minutes")
  .timeZone("Etc/UTC")
  .onRun(async (_) => {
    const now = new Date();
    console.log("This will be run every 30 minutes" + now.toISOString());

    const stats = await statusDocRef().get();

    const data = stats.data();
    if (stats.exists && data != null) {
      await statsLogCollection()
        .doc()
        .set({
          liveEventsCount: data.liveEventsCount,
          timestamp: firestore.Timestamp.fromDate(now),
        });
    }
  });

/*
export const tryCron = functions
  .region("europe-west3")
  .https.onRequest(
    async (request: functions.https.Request, response: functions.Response) => {
      cors(request, response, async () => {
        console.log(request.body);

        if (request.method !== "GET") {
          response.status(403).send("Forbidden!");
          return;
        }

        const now = new Date();
        console.log("This will be run every 30 minutes" + now.toISOString());

        const stats = await statusDocRef().get();

        const data = stats.data();
        if (stats.exists && data != null) {
          await statsLogCollection()
            .doc()
            .set({
              liveEventsCount: data.liveEventsCount,
              timestamp: firestore.Timestamp.fromDate(now),
            });
        }
      });
    }
  );
*/

async function getEvent(eventId: string) {
  const res = await axios.get(
    "https://codeweek.eu/api/event-detail/" + eventId
  );
  console.log(res.status);

  if (res.status == 200) {
    console.log(res.data);
    const geoposition = res.data.data.geoposition;
    if (geoposition == null) {
      throw Error();
    }
    const geo = geoposition.split(",", 2);

    const lat = +geo[0];
    const long = +geo[1];

    const name = res.data.data.title;
    const email = res.data.data.owner.email;

    return {
      id: eventId,
      name: name,
      location: {
        _latitude: lat,
        _longitude: long,
      },
      email: email,
      status: "unknown",
    };
  } else {
    throw Error();
  }
}

function userAccessCollectionRef(): FirebaseFirestore.CollectionReference<FirebaseFirestore.DocumentData> {
  return db.collection("accesses");
}

async function getLastAccessRequest(
  eventId: string
): Promise<FirebaseFirestore.DocumentSnapshot[]> {
  const accesses = await userAccessCollectionRef()
    .where("eventId", "==", eventId)
    .where("status", "==", "waiting")
    .orderBy("requestedOn")
    .limit(1)
    .get();

  return accesses.docs;
}

export const requestOtpCode = functions
  .region("europe-west3")
  .https.onRequest(
    async (request: functions.https.Request, response: functions.Response) => {
      cors(request, response, async () => {
        console.log(request.body);

        if (request.method !== "POST") {
          response.status(403).send("Forbidden!");
          return;
        }
        const now = new Date();
        const data = request.body;
        const eventId = data.eventId;

        if (eventId === undefined || eventId === null) {
          const message = "Missing data on request: eventId= " + eventId;
          console.log(message);
          response.status(400).send("invalid-argument");
          return;
        }

        console.log("userId: " + eventId);

        const event = await getEvent(eventId);

        const requests = await getLastAccessRequest(eventId);

        if (requests.length == 0) {
          const otpCode = makeOTP();
          const accessRef = userAccessCollectionRef().doc();
          await accessRef.set({
            id: accessRef.id,
            otpCode: otpCode,
            requestedOn: firestore.Timestamp.fromDate(now),
            status: "waiting",
            eventId: eventId,
          });

          await Email.sendOtpCode(otpCode, event.email);

          console.log("first request, email sent, otpCode: " + otpCode);
          response
            .send({
              status: "email_sent",
            })
            .end();
        } else {
          ///TODO controllare validità in base alla differenza now accessOn
          // se vecchio iniviare nuovo otp code

          if (requests[0].exists) {
            const lastAccessRequest = requests[0].data();
            if (lastAccessRequest !== undefined && lastAccessRequest !== null) {
              console.log(
                "Using old request, email sent, otpCode: " +
                  lastAccessRequest.otpCode
              );
              await Email.sendOtpCode(lastAccessRequest.otpCode, event.email);
              response
                .send({
                  status: "email_sent",
                })
                .end();
              return;
            }
          }
        }
      });
    }
  );

exports.verifyOtpCode = functions
  .region("europe-west3")
  .https.onRequest(
    async (request: functions.https.Request, response: functions.Response) => {
      cors(request, response, async () => {
        console.log(request.body);

        if (request.method !== "POST") {
          response.status(403).send("Forbidden!");
          return;
        }
        const now = new Date();
        const data = request.body;
        const eventId = data.eventId;
        const otpCode = data.otpCode;

        if (
          eventId === undefined ||
          eventId === null ||
          otpCode === undefined ||
          otpCode === null
        ) {
          const message =
            "Missing data on request: eventId= " +
            eventId +
            ", otpCode= " +
            otpCode;
          console.log(message);
          response.status(400).send("invalid-argument");
          return;
        }
        console.log("eventId: " + eventId + ", otp: " + otpCode);

        const requests = await getLastAccessRequest(eventId);

        if (requests.length == 0) {
          response.status(404).send({
            error:
              "there aren't active requests, you must request new otp code",
          });
        } else {
          const lastAccessRequest = requests[0].data();
          if (lastAccessRequest !== undefined && lastAccessRequest !== null) {
            if (otpCode == lastAccessRequest.otpCode) {
              const batch = db.batch();
              batch.update(
                userAccessCollectionRef().doc(lastAccessRequest.id),
                {
                  accessOn: firestore.Timestamp.fromDate(now),
                  status: "used",
                }
              );

              await batch.commit();
              response
                .send({
                  status: "otp_code_verified",
                })
                .end();
            } else {
              console.log("invalid otp code");
              response.status(400).send("invalid-otp-code");
              return;
            }
          }
        }
      });
    }
  );

function makeOTP() {
  var result = "";
  var characters = "0123456789";
  var charactersLength = characters.length;
  for (var i = 0; i < 5; i++) {
    result += characters.charAt(Math.floor(Math.random() * charactersLength));
  }
  return result;
}

/*
function isToday(date: Date) {
  const today = new Date();

  // 👇️ Today's date
  console.log(today);

  if (today.toDateString() === date.toDateString()) {
    return true;
  }

  return false;
}*/
