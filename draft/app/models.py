from django.db import models


# Create your models here.
class Position(models.Model):
    name = models.CharField(max_length=255)


class College(models.Model):
    name = models.CharField(max_length=255)


class Player(models.Model):
    name = models.CharField(max_length=255)
    position = models.ForeignKey(Position)
    college = models.ForeignKey(College, null=True)
    grade = models.IntegerField()


class Team(models.Model):
    name = models.CharField(max_length=255)


class DraftPick(models.Model):
    round = models.IntegerField()
    pick = models.IntegerField()
    team = models.ForeignKey(Team)
    player = models.ForeignKey(Player, null=True)



