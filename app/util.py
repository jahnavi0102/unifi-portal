import re

# A more robust regex for email validation
EMAIL_REGEX = re.compile(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$")

def validate_email(email: str) -> bool:
    """
    Validates an email address using a regular expression.
    """
    return bool(EMAIL_REGEX.match(email))
