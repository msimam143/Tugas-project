# Generated by Django 4.1.4 on 2022-12-15 15:46

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0008_artikel_gambar'),
    ]

    operations = [
        migrations.AlterField(
            model_name='artikel',
            name='gambar',
            field=models.ImageField(blank=True, null=True, upload_to=''),
        ),
    ]