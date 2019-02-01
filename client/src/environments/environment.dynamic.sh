#!/bin/bash

# Move to where this script is located.
cd $(dirname $0)

# Generate dynamic configuration file from environment variables.
cat > environment.dynamic.ts <<EOL
export const environment = {
  production: false,
  hmr: true,
  apiUrl: '${API_URL-"http://localhost:9000"}'
}
EOL
