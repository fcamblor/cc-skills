#!/bin/bash

# Example Script
# This demonstrates how to structure scripts in the skills/scripts/ directory
# Make executable: chmod +x scripts/example-script.sh

set -e  # Exit on error

# Script metadata
SCRIPT_NAME=$(basename "$0")
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Helper functions
log_info() {
  echo -e "${GREEN}[INFO]${NC} $1"
}

log_error() {
  echo -e "${RED}[ERROR]${NC} $1"
}

log_warn() {
  echo -e "${YELLOW}[WARN]${NC} $1"
}

# Main logic
main() {
  log_info "Script starting..."

  # Example: Check if required tools are available
  if ! command -v git &> /dev/null; then
    log_error "git is required but not installed"
    return 1
  fi

  log_info "All prerequisites met"
  log_info "Script completed successfully"
}

# Run main function
main "$@"
