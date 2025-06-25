clean:
	fvm flutter clean

pub-get:
	fvm flutter pub get

pub-upgrade:
	fvm flutter pub upgrade

pub-upgrade-major:
	fvm flutter pub upgrade --major-versions

build-runner:
	fvm flutter pub run build_runner build

watch-runner:
	fvm flutter pub run build_runner watch

build-runner-delete:
	fvm flutter pub run build_runner build --delete-conflicting-outputs

watch-runner-delete:
	fvm flutter pub run build_runner watch --delete-conflicting-outputs

gen-l10n:
	fvm flutter gen-l10n

gen-flavor:
	fvm flutter pub run flutter_flavorizr

gen-assets:
	fluttergen -c pubspec.yaml

build-apk-dev:
	fvm flutter build apk --flavor dev -t lib/main_dev.dart

build-apk-prod:
	fvm flutter build apk --flavor prod -t lib/main_prod.dart

build-appbundle-prod:
	fvm flutter build appbundle --flavor prod -t lib/main_prod.dart

reset:
	fvm flutter clean
	fvm flutter pub get
	fvm flutter gen-l10n
	fvm flutter pub run build_runner build --delete-conflicting-outputs

SHELL := /bin/bash
ENTRYPOINT := lib/main.dart

define build_apk
	@echo "🛠 Building APK - FLAVOR=$(1), FULL_ADS=$(3)"
	@if [[ "$$OS" == "Windows_NT" ]]; then \
		echo "🪟 Running on Windows (PowerShell)"; \
		powershell -ExecutionPolicy Bypass -File ./build_config/build_android.ps1 -FLAVOR "$(1)" -ENTRYPOINT "$(2)" -FULL_ADS "$(3)"; \
	else \
		echo "🐧 Running on Unix (macOS/Linux)"; \
		chmod +x ./build_config/build_android.sh; \
		./build_config/build_android.sh "$(1)" "$(2)" "$(3)"; \
	fi
endef

build_apk_dev_normal:
	$(call build_apk,dev,$(ENTRYPOINT),false)

build_apk_dev_full_ads:
	$(call build_apk,dev,$(ENTRYPOINT),true)

build_apk_prod_normal:
	$(call build_apk,prod,$(ENTRYPOINT),false)

build_apk_prod_full_ads:
	$(call build_apk,prod,$(ENTRYPOINT),true)