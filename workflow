#! /usr/local/bin/python3

# workflow

import argparse
import webbrowser

parser = argparse.ArgumentParser(
    description="Open the necessary window to begin workflow."
)

group = parser.add_mutually_exclusive_group()
group.add_argument(
    "-l", "--leads", action="store_true", help="Workflow for lead generation"
)

args = parser.parse_args()

lead_sites = [
    "https://www.upwork.com",
    "https://www.freelancer.com/search/projects/",
    "https://calendly.com/event_types/user/me",
]


def parse():
    if args.leads:
        for addr in lead_sites:
            webbrowser.open_new(addr)


if __name__ == "__main__":
    parse()
