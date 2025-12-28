# Every Minute of the Day

A time simulation visualization that tracks events across all minutes of a day (24 hours × 60 minutes = 1,440 minutes).

## Features

- Visual grid showing all minutes in a day (GitHub-style activity graph)
- Track events per day and visualize progress
- Graph showing remaining empty minutes vs days elapsed
- Progress table tracking iterations and statistics

## Deployment

### Cloudflare Pages

1. Push this repository to GitHub, GitLab, or Bitbucket
2. Go to [Cloudflare Dashboard](https://dash.cloudflare.com/) → Pages
3. Click "Create a project" → "Connect to Git"
4. Select your repository
5. Build settings:
   - **Framework preset**: None
   - **Build command**: (leave empty)
   - **Build output directory**: `/` (root)
6. Click "Save and Deploy"

The site will be automatically deployed and available at `your-project.pages.dev`.

### Manual Deployment

Simply upload the `index.html` file to any static hosting service:
- Cloudflare Pages
- GitHub Pages
- Netlify
- Vercel
- Any CDN or static file host

## Local Development

Open `index.html` directly in a web browser - no build process required!

## Usage

1. Set "Events per day" using the slider (1-50)
2. Click "Process additional day" to add events randomly
3. Click "Fill All Cells" to automatically fill all minutes
4. View progress in the graph and table below
5. Click "Clear Simulation" to reset and start over

