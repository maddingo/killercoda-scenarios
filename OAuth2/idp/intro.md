# OAuth 2 Enabled Architecture

OAuth 2 is a authorization Framework and together with Open ID Connect (OIDC) is used to secure web applications, published by IETF.

The current version is OAuth 2.0 ([RFC6749](https://www.rfc-editor.org/rfc/rfc6749), [RFC6750](https://www.rfc-editor.org/rfc/rfc6750), [RFC6819](https://www.rfc-editor.org/rfc/rfc6819)) with [OAuth 2.1](https://datatracker.ietf.org/doc/draft-ietf-oauth-v2-1/) in draft.

Best PRactices for OAuth 2 were published under [RFC9700](https://www.ietf.org/rfc/rfc9700.html).

An OAuth 2 enabled architecture consists of:
- Identity Provider (IdP)
- Client Application
- Resource Server

With regard to security, OAuth talks about back channels and front channels. Back channels are considered more secure since they are not exposed to the internet directly. Front channels are typically communication channels from the browser.

## Identity Provider (IdP)

The IdP is the system responsible for distributing access tokens and managing the users and their credentials. This is the only system in this architecture where a user should be typing in their passwords. Both the frontend application and the resource server communicate with the IdP to verify and refresh access tokens.

## Resource Server

The resource server is a headless application that owns the data another application wants access to. users should not interact with the resource server directly, only through the frontend application.

## Client Application

The Client Application can have different forms:
- Backend application with server-side rendering of static web page shown in the browser
  - here, the server calls the IdP and the resource server
- Single-Page Application in the browser, e.g. dynamic Javascript application with browser-internal routing and client-side rendering
  - here, the browser calls the IdP and the resource server
- Frontend with Backend-for-frontend (BFF) pattern, very similar to the first alternative.
  - the BFF negotiates the access token on a backend channel and calls the resource server
