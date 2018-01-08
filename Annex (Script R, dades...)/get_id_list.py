import os
import json
from twitter import Api

CONSUMER_KEY = '2u45W0HXPO4ssY4g3B4qaUptz'
CONSUMER_SECRET = 'jogjLl5538fteAbhV60iWgczTQRN9tmlUlzh50baaYRvpCEzD1'
ACCESS_TOKEN = '377333807-EDH3dsVxhFEvEiEsRKqRS9YnfcRV0zx0olczl4LK'
ACCESS_TOKEN_SECRET = 'iHOsU44BFrXI7OGbrTDuwvPJq34GXimS2fMhLnBsyxDp4'

api = Api(CONSUMER_KEY, CONSUMER_SECRET, ACCESS_TOKEN, ACCESS_TOKEN_SECRET)

with open("idlist.txt", 'w') as idlist:
    for line in api.GetFriendIDs(user_id=941681554350333952):
        idlist.write(str(line))
        idlist.write('\n')
    idlist.close()