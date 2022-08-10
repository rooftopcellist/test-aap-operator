

./clean-operators.sh
./create-resources.sh
./deploy-operators.sh

# wait for ~ 6 minutes
sleep 360

./generate-report.sh
