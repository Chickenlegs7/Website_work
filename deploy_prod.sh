gcloud builds submit --tag gcr.io/wildrose-industrial-services/railway:1.0.0 . 
gcloud run deploy website-service --image=gcr.io/wildrose-industrial-services/railway:1.0.0 --platform managed --region us-central1
