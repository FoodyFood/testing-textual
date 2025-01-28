lint:
	export PYTHONPATH="$(PWD):$$PYTHONPATH"; \
	python3 -m pylint ./menus/

test:
	export PYTHONPATH="$(PWD):$$PYTHONPATH"; \
	pytest --asyncio-mode=auto

coverage:
	export PYTHONPATH="$(PWD):$$PYTHONPATH"; \
	coverage run -m pytest --asyncio-mode=auto; coverage report

