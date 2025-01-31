gcloud builds submit --tag gcr.io/wildrose-industrial-services/railway:1.0.0 . --service-account 7289993003-compute@developer.gserviceaccount.com
gcloud run deploy --image=gcr.io/wildrose-industrial-services/railway:1.0.0 --platform managed --region us-central1 --service-account 7289993003-compute@developer.gserviceaccount.com
