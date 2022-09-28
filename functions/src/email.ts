import * as functions from "firebase-functions";
import formData = require("form-data");
import Mailgun from "mailgun.js";
const mailgun = new Mailgun(formData);

const k = process.env.MG_API_KEY ?? "adsfghjkl";

const mg = mailgun.client({
  username: "api",
  key: k,
  public_key: process.env.MG_PUB_KEY,
  url: "https://api.eu.mailgun.net",
});

// add the code below
//module.exports = { sendVerificationEmail, sendUserCardEmail };

export function sendEmail(
  to: Array<string>,
  subject: string,
  template: string,
  json: string,
  attachment: any,
  inline: any
) {
  const data = {
    from: "Codeweek Live Map <no-reply@digit.srl>",
    to: to,
    subject: subject,
    template: template,
    "h:X-Mailgun-Variables": json,
    attachment: attachment,
    inline: inline,
  };

  console.log(data);

  return mg.messages
    .create(process.env.MG_DOMAIN ?? "", data)
    .then((msg: any) => {
      console.log("email inviata " + msg);
      return true;
    }) // logs response data
    .catch((err: any) => {
      console.log(err);
      throw new functions.https.HttpsError("aborted", err);
    });
}

export async function sendOtpCode(otpCode: string, email: string) {
  const emails = [email];

  const json = JSON.stringify({
    otpCode: otpCode,
    email: email,
  });

  console.log(json);
  return sendEmail(emails, "Otp code", "livemap_otc", json, null, null);
}
