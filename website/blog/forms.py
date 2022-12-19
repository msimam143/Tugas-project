from django import forms

class komen_form(forms.Form):
    email = forms.EmailField(
        max_length=50,
        widget=forms.TextInput(
            attrs={
                'class':'form-control',
                'placeholder':'masukan email'
            }
        )
    )
    isi = forms.CharField(
        max_length=500,
        widget=forms.TextInput(
            attrs={
                'class':'form-control',
                'placheholder':'ini isi komentar'
            }
        )
    )