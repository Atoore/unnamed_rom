.class Lcom/android/settings/wifi/WifiDirectDialog;
.super Landroid/app/AlertDialog;
.source "WifiDirectDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final edit:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field mContext:Landroid/content/Context;

.field private final mDirectPreference:Lcom/android/settings/wifi/WifiDirectPreference;

.field mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPassword:Landroid/widget/EditText;

.field private mSsid:Landroid/widget/EditText;

.field mTempPassworld:Ljava/lang/String;

.field mTempSsid:Ljava/lang/String;

.field private mView:Landroid/view/View;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field passwordWatcher:Landroid/text/TextWatcher;

.field ssidWatcher:Landroid/text/TextWatcher;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/WifiDirectPreference;ZLandroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "directPreference"
    .parameter "edit"
    .parameter "wifiConfig"

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 72
    iput-object v0, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mTempSsid:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mTempPassworld:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 180
    new-instance v0, Lcom/android/settings/wifi/WifiDirectDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiDirectDialog$2;-><init>(Lcom/android/settings/wifi/WifiDirectDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDirectDialog;->ssidWatcher:Landroid/text/TextWatcher;

    .line 215
    new-instance v0, Lcom/android/settings/wifi/WifiDirectDialog$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiDirectDialog$3;-><init>(Lcom/android/settings/wifi/WifiDirectDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDirectDialog;->passwordWatcher:Landroid/text/TextWatcher;

    .line 86
    iput-boolean p4, p0, Lcom/android/settings/wifi/WifiDirectDialog;->edit:Z

    .line 88
    iput-object p2, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 89
    iput-object p5, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 90
    iput-object p3, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mDirectPreference:Lcom/android/settings/wifi/WifiDirectPreference;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiDirectDialog;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/WifiDirectDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiDirectDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mSsid:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiDirectDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectDialog;->validate()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiDirectDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .parameter "group"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030065

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 173
    .local v0, row:Landroid/view/View;
    const v1, 0x7f0b0043

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 174
    const v1, 0x7f0b0081

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 176
    return-void
.end method

.method private validate()V
    .locals 10

    .prologue
    const/16 v9, 0x20

    const/4 v8, -0x1

    .line 251
    const/4 v6, 0x0

    .line 252
    .local v6, ssidSpaceCharCount:I
    const/4 v3, 0x0

    .line 253
    .local v3, passwordSpaceCharCount:I
    iget-object v7, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->length()I

    move-result v5

    .line 254
    .local v5, ssidLength:I
    iget-object v7, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->length()I

    move-result v2

    .line 255
    .local v2, passwordLength:I
    iget-object v7, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, ssid:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, password:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v7, :cond_1

    .line 260
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 261
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_0

    .line 262
    add-int/lit8 v6, v6, 0x1

    .line 260
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    .end local v0           #i:I
    :cond_1
    iget-object v7, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mPassword:Landroid/widget/EditText;

    if-eqz v7, :cond_3

    .line 269
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 270
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_2

    .line 271
    add-int/lit8 v3, v3, 0x1

    .line 269
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 276
    .end local v0           #i:I
    :cond_3
    if-eqz v5, :cond_4

    if-nez v6, :cond_4

    if-eq v2, v3, :cond_4

    const/16 v7, 0x8

    if-ge v2, v7, :cond_5

    .line 278
    :cond_4
    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/WifiDirectDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 282
    :goto_2
    return-void

    .line 280
    :cond_5
    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/WifiDirectDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectDialog;->validate()V

    .line 300
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 296
    return-void
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 3

    .prologue
    .line 95
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 97
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 99
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, password:Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object v2, v0

    .line 104
    .end local v1           #password:Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mPassword:Landroid/widget/EditText;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 289
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 290
    return-void

    .line 285
    :cond_0
    const/16 v1, 0x80

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030066

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mView:Landroid/view/View;

    .line 111
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiDirectDialog;->setView(Landroid/view/View;)V

    .line 112
    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/WifiDirectDialog;->setInverseBackgroundForced(Z)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 115
    .local v0, context:Landroid/content/Context;
    iput-object v0, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 118
    .local v4, resources:Landroid/content/res/Resources;
    const-string v6, "wifi"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 119
    .local v3, mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 121
    .local v2, mWifiInfo:Landroid/net/wifi/WifiInfo;
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mDirectPreference:Lcom/android/settings/wifi/WifiDirectPreference;

    if-nez v6, :cond_1

    .line 122
    const v6, 0x7f080174

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiDirectDialog;->setTitle(I)V

    .line 124
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mView:Landroid/view/View;

    const v7, 0x7f0b0133

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 125
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mView:Landroid/view/View;

    const v7, 0x7f0b0131

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mSsid:Landroid/widget/EditText;

    .line 126
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mView:Landroid/view/View;

    const v7, 0x7f0b0134

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mPassword:Landroid/widget/EditText;

    .line 127
    const v6, 0x7f08019f

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v6, v7}, Lcom/android/settings/wifi/WifiDirectDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 129
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 130
    .local v5, str:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 132
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mPassword:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mPassword:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 135
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mView:Landroid/view/View;

    const v7, 0x7f0b0135

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 138
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 141
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mSsid:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiDirectDialog;->ssidWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 142
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mPassword:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiDirectDialog;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 144
    new-instance v6, Lcom/android/settings/wifi/WifiDirectDialog$1;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/WifiDirectDialog$1;-><init>(Lcom/android/settings/wifi/WifiDirectDialog;)V

    iput-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 165
    .end local v5           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v6, -0x2

    const v7, 0x7f0801a0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/settings/wifi/WifiDirectDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 168
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 169
    return-void

    .line 153
    :cond_1
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mDirectPreference:Lcom/android/settings/wifi/WifiDirectPreference;

    iget-object v6, v6, Lcom/android/settings/wifi/WifiDirectPreference;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiDirectDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mView:Landroid/view/View;

    const v7, 0x7f0b012f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 156
    .local v1, group:Landroid/view/ViewGroup;
    const v6, 0x7f0801af

    iget-object v7, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mDirectPreference:Lcom/android/settings/wifi/WifiDirectPreference;

    iget-object v7, v7, Lcom/android/settings/wifi/WifiDirectPreference;->bssid:Ljava/lang/String;

    invoke-direct {p0, v1, v6, v7}, Lcom/android/settings/wifi/WifiDirectDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 158
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mDirectPreference:Lcom/android/settings/wifi/WifiDirectPreference;

    iget v6, v6, Lcom/android/settings/wifi/WifiDirectPreference;->directStatus:I

    if-nez v6, :cond_2

    .line 159
    const v6, 0x7f08019d

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v6, v7}, Lcom/android/settings/wifi/WifiDirectDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 160
    :cond_2
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mDirectPreference:Lcom/android/settings/wifi/WifiDirectPreference;

    iget v6, v6, Lcom/android/settings/wifi/WifiDirectPreference;->directStatus:I

    if-ne v6, v10, :cond_0

    .line 161
    const/4 v6, -0x3

    const v7, 0x7f080180

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/settings/wifi/WifiDirectDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 293
    return-void
.end method
