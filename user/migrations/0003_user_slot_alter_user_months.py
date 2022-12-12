# Generated by Django 4.1.3 on 2022-12-10 11:43

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ("user", "0002_alter_user_age"),
    ]

    operations = [
        migrations.AddField(
            model_name="user",
            name="slot",
            field=models.CharField(default=django.utils.timezone.now, max_length=20),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name="user", name="months", field=models.CharField(max_length=25),
        ),
    ]
