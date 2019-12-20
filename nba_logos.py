import requests
from bs4 import BeautifulSoup as bs


def logo_grabber(team):
# Pass in the name of an NBA team
# ex. logo_grabber('toronto raptors')
# The function returns the src of the team logo from wikipedia

    # base url & team name clean up
    url = 'https://en.wikipedia.org/wiki/'
    team_prep = team.title().replace(' ', '_')

    # grab all the html from the team's wiki page and store it
    result = requests.get(url + team_prep)
    content = result.content

    # parse the html and find the image
    soup = bs(content, 'lxml')
    try:
        logo_link = soup.find('a', {'class':'image'})
        if logo_link.img.get('src')[-12:-8] == 'logo':
            # return logo src
            return {team:logo_link.img.get('src')}
        else:
            return 'Logo Not Found'
    except:
        return 'Logo Not Found'

print(logo_grabber('toronto raptors'))
