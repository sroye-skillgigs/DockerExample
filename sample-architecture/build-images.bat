@ECHO OFF

SET version = %1
SET app = %2

if %1 = "" (
	%version% = latest
) 

if not %2 = "" (
	docker build --rm -f "skillgigs-%app%\Dockerfile" -t sroye98/skillgigs-%app%:%version% skillgigs-%app%
) else (
	docker build --rm -f "skillgigs-app\Dockerfile" -t sroye98/skillgigs-app:%version% skillgigs-app
	docker build --rm -f "skillgigs-backend\Dockerfile" -t sroye98/skillgigs-backend:%version% skillgigs-backend
	docker build --rm -f "skillgigs-emp\Dockerfile" -t sroye98/skillgigs-emp:%version% skillgigs-emp
	docker build --rm -f "skillgigs-search\Dockerfile" -t sroye98/skillgigs-search:%version% skillgigs-search
	docker build --rm -f "skillgigs-talent\Dockerfile" -t sroye98/skillgigs-talent:%version% skillgigs-talent
)