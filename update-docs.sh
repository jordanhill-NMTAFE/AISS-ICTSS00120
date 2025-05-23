#!/bin/bash

find "1 Learning Materials" -name "*slides.md" -exec sh -c '
  for file in "$@"; do
    dir_name=$(basename "$(dirname "$file" | tr -d " " | tr "[:upper:]" "[:lower:]")")
    base_name=$(basename "$file" .md | tr "_" " " | tr "[:upper:]" "[:lower:]")
    additional_text=$(echo "$base_name" | tr " " "_" | tr "[:upper:]" "[:lower:]")
    output_file="${dir_name}_${additional_text}.html"
    marp "$file" -o "docs/$output_file" --html --allow-local-files --theme northmetro.css
  done
' sh {} +

find "1 Learning Materials" -name "*_handout.md" -exec sh -c '
  for file in "$@"; do
    dir_name=$(basename "$(dirname "$file" | tr -d " " | tr "[:upper:]" "[:lower:]")")
    base_name=$(basename "$file" .md | tr "_" " " | tr "[:upper:]" "[:lower:]")
    additional_text=$(echo "$base_name" | tr " " "_" | tr "[:upper:]" "[:lower:]")
    output_file="${dir_name}_${additional_text}.html"
    pandoc --from=markdown --to=html --standalone --output="docs/$output_file" --mathjax "$file"
  done
' sh {} +



#!/bin/bash

# Define the directory containing the slide files
SLIDES_DIR="docs"

# Start writing the README content
cat <<EOL > docs/README.md
# Welcome to the AI Skillset Course Materials

## Introduction

Welcome to the AI Skillset course! 

We're thrilled to have you join us on this exciting journey into the world of Artificial Intelligence. This course is designed to provide you with a comprehensive understanding of AI, from the fundamental principles to cutting-edge technologies. Whether you're a novice or have some experience in AI, this course will help you enhance your skills and prepare you for the evolving landscape of AI applications.

## Learning Plan
EOL

# Loop through each session and add the corresponding slide link
for i in {1..18}; do
    # Check if the slide file exists for the session
    echo >> docs/README.md
    echo "### Session $i" >> docs/README.md
    echo >> docs/README.md
    for slide_file in "$SLIDES_DIR"/week${i}_*"slides.html"; do
        if [ -f "$slide_file" ]; then
            # Split the filename by '_' and remove the first and last elements
            IFS='_' read -r -a parts <<< "$(basename "$slide_file" .html)"
            unset parts[0]  # Remove the first element
            # Remove the last element by slicing the array
            parts=("${parts[@]::${#parts[@]}-1}")
            # Join the remaining parts to form a unique identifier
            unique_identifier=$(IFS='_'; echo "${parts[*]}")
            # If the unique identifier is empty, use the original filename without extension
            if [ -z "$unique_identifier" ]; then
                unique_identifier=$(basename "$slide_file" .html)
            fi
            echo "- [$unique_identifier]($(basename "$slide_file"))" >> docs/README.md
        fi
    done

    # Manually add content for Session 4
    if [ "$i" -eq 4 ]; then
        echo "- Data Bias and Ethics in AI (Discussion / set readings):" >> docs/README.md
        echo "  - **\"I Have No Mouth, and I Must Scream\" by Harlan Ellison** (1968)" >> docs/README.md
        echo "  - **\"Robbie\" by Isaac Asimov** (1940)" >> docs/README.md
        echo "  - **\"The Moon is a Harsh Mistress\" by Robert A. Heinlein** (1966) (Chapter 1)" >> docs/README.md
    fi

    # Manually add content for Session 6
    if [ "$i" -eq 6 ]; then
        echo "— *Assessment Work*" >> docs/README.md
    fi

    # Manually add content for Session 7
    if [ "$i" -eq 7 ]; then
        echo "— *Presentations*" >> docs/README.md
    fi

    if [ "$i" -eq 16 ]; then
        echo "— *Project Work*" >> docs/README.md
    fi

    if [ "$i" -eq 17 ]; then
        echo "— *Project Work*" >> docs/README.md
    fi

    if [ "$i" -eq 18 ]; then
        echo "— *Final Projects due*" >> docs/README.md
    fi

    # Check for any handouts for the session
    for handout in "$SLIDES_DIR/week${i}_"*"handout.html"; do
        if [ -f "$handout" ]; then
            handout_name=$(basename "$handout")
            echo "- [$(echo "$handout_name" | sed 's/_/ /g' | sed 's/.html//')]($(echo "$handout_name" | sed 's/week${i}_//; s/ /_/g'))" >> docs/README.md
        fi
    done
done

# Append the rest of the static content
cat <<EOL >> docs/README.md

## What You'll Learn

1. **Fundamentals of AI**: Understand the core concepts, history, and types of AI.
2. **Machine Learning**: Dive into supervised, unsupervised, and reinforcement learning.
3. **Deep Learning**: Explore neural networks, CNNs, RNNs, and more.
4. **Natural Language Processing (NLP)**: Learn the basics of text processing, sentiment analysis, and language models.
5. **Computer Vision**: Understand image processing, object detection, and facial recognition.
6. **AI Ethics**: Discuss the ethical considerations and societal impacts of AI.
7. **Practical Applications**: Apply AI to real-world problems and case studies.

## Course Structure

- **Lectures**: Interactive sessions led by industry experts.
- **Hands-on Labs**: Practical exercises to apply the concepts learned.
- **Assignments**: Regular assignments to test your knowledge and skills.
- **Project Work**: Develop your own AI project by the end of the course.
- **Readings**: Supplemental materials to broaden your understanding and engagement with broader concepts and issues in AI.

## Resources

- **Course Materials**: Available on the course platform [link to platform].
- **Textbooks and Articles**: Recommended readings will be provided.
- **Support**: Teaching assistants and instructors are available during office hours for additional help.

## Expectations

- **Active Participation**: Engage in discussions, labs, and project work.
- **Time Management**: Allocate sufficient time each week to cover the materials and complete assignments.
- **Collaborative Learning**: Work with your peers, share insights, and learn from each other.
- **Academic Integrity**: Adhere to the course's academic integrity policies.

## Contact

For any questions or concerns, please reach out to us:
- **Email**: jordan.hill@nmtafe.wa.edu.au
- **Office Hours**: By Appointment

We look forward to an exciting and productive semester. Let's explore the fascinating world of AI together!

---

Happy Learning!
EOL