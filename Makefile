default: pytest

# default: pylint pytest

# pylint:
# 	find . -iname "*.py" -not -path "./tests/test_*" | xargs -n1 -I {}  pylint --output-format=colorized {}; true

pytest:
	echo "no tests"

# ----------------------------------
#         LOCAL SET UP
# ----------------------------------

install_requirements:
	@pip install -r requirements.txt

# ----------------------------------
#         HEROKU COMMANDS
# ----------------------------------

run_app:
	-@streamlit run app/Safety-Map.py


# ----------------------------------
#    LOCAL INSTALL COMMANDS
# ----------------------------------
install:
	@pip install . -U

clean:
	@rm -fr */__pycache__
	@rm -fr __init__.py
	@rm -fr build
	@rm -fr dist
	@rm -fr *.dist-info
	@rm -fr *.egg-info
	-@rm model.joblib
