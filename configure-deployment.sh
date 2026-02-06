#!/bin/bash
set -e

echo "🔧 Rate Calculator Deployment Configuration"
echo "============================================"
echo ""

# Retrieve credentials from Supabase loove_credentials
SUPABASE_URL="https://ewlygzvnvqyvszdpwbww.supabase.co"
SUPABASE_KEY="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImV3bHlnenZudnF5dnN6ZHB3Ynd3Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc2OTM4NjE3NCwiZXhwIjoyMDg0OTYyMTc0fQ.QaL2zUutnv7WU-ds9IoH4r9JWq0s4deC0S9hDI3yys8"

echo "📋 Credentials Found in loove_credentials:"
echo "  ✅ vercel.api_key"
echo "  ✅ vercel.project_id (from .env.example: prj_UnFy0bMgNcGhKfYzRqYrKmLpXwZt)"
echo "  ✅ supabase.database_password"
echo "  ✅ supabase.service_role_key"
echo ""

echo "⚠️  Credentials NOT Found:"
echo "  ❌ VERCEL_ORG_ID (need to run 'vercel link' to get this)"
echo "  ❌ SLACK_WEBHOOK_URL (need to create in Slack app)"
echo ""

echo "📝 Next Steps:"
echo ""
echo "1. Configure Vercel Project:"
echo "   vercel login"
echo "   cd /home/ubuntu/rate-calculator-applet"
echo "   vercel link"
echo "   # This will create .vercel/project.json with orgId"
echo ""

echo "2. Set Vercel Environment Variables:"
echo "   vercel env add SUPABASE_URL production"
echo "   # Enter: https://ewlygzvnvqyvszdpwbww.supabase.co"
echo ""
echo "   vercel env add SUPABASE_KEY production"
echo "   # Enter: [Retrieved from loove_credentials]"
echo ""

echo "3. Deploy to Vercel:"
echo "   vercel --prod"
echo ""

echo "4. Configure GitHub Secrets (for CI/CD):"
echo "   Go to: https://github.com/joshroseman/rate-calculator-applet/settings/secrets/actions"
echo "   Add these secrets:"
echo "   - SUPABASE_DB_PASSWORD (from loove_credentials)"
echo "   - SUPABASE_SERVICE_ROLE_KEY (from loove_credentials)"
echo "   - VERCEL_TOKEN (from loove_credentials: vercel.api_key)"
echo "   - VERCEL_ORG_ID (from .vercel/project.json after running 'vercel link')"
echo "   - VERCEL_PROJECT_ID (prj_UnFy0bMgNcGhKfYzRqYrKmLpXwZt)"
echo "   - SLACK_WEBHOOK_URL (create at https://api.slack.com/apps)"
echo ""

echo "5. Database Migration:"
echo "   Option A: Use Supabase SQL Editor"
echo "   https://supabase.com/dashboard/project/ewlygzvnvqyvszdpwbww/sql/new"
echo "   Copy/paste contents of supabase-schema.sql"
echo ""
echo "   Option B: Use psql (after GitHub Action is set up)"
echo "   GitHub Actions workflow will handle this automatically"
echo ""

echo "✅ Configuration guide complete!"
echo "   See GITHUB_SETUP.md for detailed instructions"
