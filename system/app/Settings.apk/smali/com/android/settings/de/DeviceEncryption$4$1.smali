.class Lcom/android/settings/de/DeviceEncryption$4$1;
.super Ljava/lang/Object;
.source "DeviceEncryption.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/de/DeviceEncryption$4;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/de/DeviceEncryption$4;


# direct methods
.method constructor <init>(Lcom/android/settings/de/DeviceEncryption$4;)V
    .locals 0
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/settings/de/DeviceEncryption$4$1;->this$1:Lcom/android/settings/de/DeviceEncryption$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/settings/de/DeviceEncryption$4$1;->this$1:Lcom/android/settings/de/DeviceEncryption$4;

    iget-object v0, v0, Lcom/android/settings/de/DeviceEncryption$4;->this$0:Lcom/android/settings/de/DeviceEncryption;

    invoke-static {v0}, Lcom/android/settings/de/DeviceEncryption;->access$600(Lcom/android/settings/de/DeviceEncryption;)V

    .line 379
    iget-object v0, p0, Lcom/android/settings/de/DeviceEncryption$4$1;->this$1:Lcom/android/settings/de/DeviceEncryption$4;

    iget-object v0, v0, Lcom/android/settings/de/DeviceEncryption$4;->this$0:Lcom/android/settings/de/DeviceEncryption;

    invoke-static {v0}, Lcom/android/settings/de/DeviceEncryption;->access$000(Lcom/android/settings/de/DeviceEncryption;)V

    .line 380
    iget-object v0, p0, Lcom/android/settings/de/DeviceEncryption$4$1;->this$1:Lcom/android/settings/de/DeviceEncryption$4;

    iget-object v0, v0, Lcom/android/settings/de/DeviceEncryption$4;->this$0:Lcom/android/settings/de/DeviceEncryption;

    invoke-static {v0}, Lcom/android/settings/de/DeviceEncryption;->access$300(Lcom/android/settings/de/DeviceEncryption;)Landroid/app/Activity;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/settings/SecuritySettings;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->setDisableADBCMenu()V

    .line 381
    return-void
.end method
