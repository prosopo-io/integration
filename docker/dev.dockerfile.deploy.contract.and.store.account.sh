cd $1
yarn
yarn build
{ CONTRACT_ADDRESS=$(yarn deploy | tee /dev/fd/3 | tail -n 1); } 3>&1
echo "Deployed contract address: $CONTRACT_ADDRESS"
echo "$2=$CONTRACT_ADDRESS" >> /usr/src/env