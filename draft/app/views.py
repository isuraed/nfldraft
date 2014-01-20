from django.shortcuts import render
from app.models import DraftPick, Player


def pre(request):
    draft_picks = DraftPick.objects.filter(round=1)
    top_players = Player.objects.all().order_by('-grade')[:25]
    context = {'draft_order': draft_picks, 'top_players': top_players}
    return render(request, 'base_pre.html', context)

def results(request, round_number="1"):
    draft_picks = DraftPick.objects.filter(round=int(round_number))
    context = {'draft_picks': draft_picks}
    return render(request, 'base_results.html', context)
