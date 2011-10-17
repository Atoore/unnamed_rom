.class Lcom/android/settings/de/DeviceEncryption$4;
.super Ljava/lang/Object;
.source "DeviceEncryption.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/de/DeviceEncryption;->setSDcardPref(Landroid/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/de/DeviceEncryption;


# direct methods
.method constructor <init>(Lcom/android/settings/de/DeviceEncryption;)V
    .locals 0
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/settings/de/DeviceEncryption$4;->this$0:Lcom/android/settings/de/DeviceEncryption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f08024d

    const v4, 0x108009b

    const v3, 0x104000a

    const/high16 v2, 0x104

    .line 370
    invoke-static {}, Lcom/android/settings/de/DeviceEncryption;->access$500()Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/de/DeviceEncryption$4;->this$0:Lcom/android/settings/de/DeviceEncryption;

    invoke-static {v1}, Lcom/android/settings/de/DeviceEncryption;->access$300(Lcom/android/settings/de/DeviceEncryption;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080251

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/de/DeviceEncryption$4$1;

    invoke-direct {v1, p0}, Lcom/android/settings/de/DeviceEncryption$4$1;-><init>(Lcom/android/settings/de/DeviceEncryption$4;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 399
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 385
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/de/DeviceEncryption$4;->this$0:Lcom/android/settings/de/DeviceEncryption;

    invoke-static {v1}, Lcom/android/settings/de/DeviceEncryption;->access$300(Lcom/android/settings/de/DeviceEncryption;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080250

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/de/DeviceEncryption$4$2;

    invoke-direct {v1, p0}, Lcom/android/settings/de/DeviceEncryption$4$2;-><init>(Lcom/android/settings/de/DeviceEncryption$4;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
