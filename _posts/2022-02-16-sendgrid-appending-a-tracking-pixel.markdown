---
layout: post
title:  "SendGrid appending a tracking pixel even when disabled"
date:   2022-02-16 02:49:29 -0600
---
<style type="text/css">
  img {
    display: block;
    margin: 24px 0;
    outline: 1px solid black;
  }
</style>

Please be aware that SendGrid appends a tracking pixel to your campaign emails (e.g. Single Sends) even if you have
disabled it:
<img alt="SendGrid tracking pixel" src="/assets/img/sendgrid-image-telemetry.png" width="500">

SendGrid tracking settings (everything was/is disabled):
<img alt="SendGrid tracking settings" src="/assets/img/sendgrid-telemetry-settings.png" width="500">

I contacted SendGrid support, only to get a blunt answer of "yeah it's like that for campaign emails":
<img alt="SendGrid support answer" src="/assets/img/sendgrid-support-answer.png" width="500">

Now, if I'm not mistaken, isn't this a egregious violation of the GDPR in the EU? Here's a bit more context:

I had/have about 60 recipients that had asked me to notify them when I'm releasing an MVP of an app. I tried to
send a regular email but it was marked as spam. Probably because of new domain? Or wording? Or links? Not sure.

I decided to sent the email using SendGrid's Single Send but as I had vowed to myself and my recipients, I won't be
setting any tracking whatsoever. In this case, I didn't even have a unambiguous consent to track them like
[SendGrid's documentation][sendgrid-docs]{:target="_blank"}{:rel="nofollow noopener noreferrer"} states:

> If you are using our Marketing Campaigns service and sending mail to recipients in jurisdictions that require
> this kind of unambiguous consent, it is important to ensure that your recipients have provided consent for
> cookies and other tracking before you send mail.

But here I am, tracking my recipients without even my own, sender's, consent?

[sendgrid-docs]: https://docs.sendgrid.com/ui/account-and-settings/tracking#faq
