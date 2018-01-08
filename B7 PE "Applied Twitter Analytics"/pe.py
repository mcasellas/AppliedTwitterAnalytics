import os
import json
import datetime
import random
from twitter import Api

CONSUMER_KEY = '2u45W0HXPO4ssY4g3B4qaUptz'
CONSUMER_SECRET = 'jogjLl5538fteAbhV60iWgczTQRN9tmlUlzh50baaYRvpCEzD1'
ACCESS_TOKEN = '377333807-EDH3dsVxhFEvEiEsRKqRS9YnfcRV0zx0olczl4LK'
ACCESS_TOKEN_SECRET = 'iHOsU44BFrXI7OGbrTDuwvPJq34GXimS2fMhLnBsyxDp4'

api = Api(CONSUMER_KEY, CONSUMER_SECRET, ACCESS_TOKEN, ACCESS_TOKEN_SECRET)

def main():
	cont = 0
	i = 0
	with open('output_31_tarda_dades.txt', 'a') as output:
		with open('output_updates.txt', 'a')as output_date:                            
                        i+=1
                        cont = 0
                        output_date.write(str(datetime.datetime.now()))
                        output_date.write(' ')
                        print('begin at:', str(datetime.datetime.now()))
                        with open('idlist.txt', 'r') as idlist:
                                for idline in idlist:
                                        for line in api.GetUserTimeline(user_id=idline, screen_name=None, since_id=None, max_id=None, count=None, include_rts=True, trim_user=False, exclude_replies=False):
                                                if random.randint(0, 255) % 7 == 0:
                                                        output.write("0")
                                                        output.write(str(line.id))
                                                        output.write('\t')
                                                        output.write(str(line.created_at))
                                                        output.write('\t')
                                                        output.write(str(line.retweet_count))
                                                        output.write('\t')
                                                        output.write(str(line.favorite_count))
                                                        output.write('\n')
                                                        cont += 1
                                        print("end of user")
                                print('end at:', str(datetime.datetime.now()))
                                output_date.write(str(cont))
                                output_date.write('\n')
                                cont = 0

if __name__ == '__main__':
    main()
