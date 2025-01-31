gcloud builds submit --tag gcr.io/wildrose-industrial-services/railway-test1.0.0 .;
gcloud run deploy --image=gcr.io/wildrose-industrial-services/railway-test1.0.0 --platform managed --region us-central1;

