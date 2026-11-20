# Hermes PPT renderer image

This repository builds a custom Hermes image with the dependencies required to render PowerPoint files to PNG for visual QA.

## Included packages

- `libreoffice-impress` — headless PPTX to PDF conversion (`soffice`)
- `poppler-utils` — PDF page to PNG conversion (`pdftoppm`)
- `fonts-noto-cjk` — Korean/CJK font fallback

## Build and deployment instructions for Docker Manager

1. Build the image from this repository's `Dockerfile`.
2. Push the resulting image to the configured public Docker registry.
3. Change the Hermes project's `image:` in Docker Compose to that pushed image.
4. Recreate the Hermes container.
5. Verify inside the new container:

```bash
command -v soffice
command -v pdftoppm
fc-match 'Noto Sans CJK KR'
```

## Security

Do not add actual `compose.yaml`, `.env`, `config.yaml`, Discord tokens, Figma keys, or other credentials to this repository.
