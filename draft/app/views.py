from django.shortcuts import render
from app.models import DraftPick, Player


def home(request):
    draft_picks = DraftPick.objects.filter(round=1)
    top_players = Player.objects.all().order_by('-grade')[:25]
    context = {'draft_order': draft_picks, 'top_players': top_players}
    return render(request, 'home.html', context)

