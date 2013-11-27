from django.db import models


# Create your models here.
class PositionCategory(models.Model):
    name = models.CharField(max_length=255)


class Position(models.Model):
    name = models.CharField(max_length=255)
    category = models.ForeignKey(PositionCategory)


class College(models.Model):
    name = models.CharField(max_length=255)


class Player(models.Model):
    name = models.CharField(max_length=255)
    position = models.ForeignKey(Position)
    college = models.ForeignKey(College, null=True)
    grade = models.IntegerField()


class Team(models.Model):
    name = models.CharField(max_length=255)
    needs = models.ManyToManyField(PositionCategory, through='TeamNeed')


class DraftPick(models.Model):
    round = models.IntegerField()
    pick = models.IntegerField()
    team = models.ForeignKey(Team)
    player = models.ForeignKey(Player, null=True)


class TeamNeed(models.Model):
    team = models.ForeignKey(Team)
    need = models.ForeignKey(PositionCategory)



