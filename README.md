# MicroShield BPO Website

MicroShield BPO is a static website for a BPO and customer experience services brand. The site includes a responsive homepage, service sections, industry coverage, proof metrics, case studies, and a front-end contact form interaction.

## What Is Included

- `index.html` for website content and page structure
- `assets/css/styles.css` for responsive layout and visual styling
- `assets/js/main.js` for navigation and contact form behavior
- `scripts/build.js` to generate the static `dist/` output
- `scripts/test.js` to validate the generated static files

## Run Locally

Open `index.html` directly in a browser, or serve the project with any local static file server.

## Build And Test

```bash
npm ci
npm test
```

The `npm test` command runs the build first and then checks that the generated `dist/` output contains the expected HTML, CSS, and JavaScript assets.

## Customize

- Update page copy and sections in `index.html`
- Update colors, spacing, and responsive behavior in `assets/css/styles.css`
- Connect the contact form to an API or CRM in `assets/js/main.js`


# DevOps points

```
1. Create GitHub account
2. Create Dockerfile use nginx base image
3. Create nginx.conf for Dockerfile images
4. .dockerignore
5. create helm chart for deploy application on kubernetes cluster
    a. deployment.yaml
    b. secret.yaml
    c. hpa.yaml
    d. namespace.yaml
6. Need to create CICD pipeline (.github/workflows/ci-cd.yml)
    a. code checkout
    b. code build
    c. code test
    d. crate image
    e. push docker image to DockerHub
7. DockerHUB account for docker image storage
8. Create Kubernetes cluster
9. install argocd
10. deploy application on k8s
11. test application
```
