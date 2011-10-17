.class Lcom/android/settings/de/DeviceEncryption$3$1;
.super Ljava/lang/Object;
.source "DeviceEncryption.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/de/DeviceEncryption$3;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/de/DeviceEncryption$3;


# direct methods
.method constructor <init>(Lcom/android/settings/de/DeviceEncryption$3;)V
    .locals 0
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/settings/de/DeviceEncryption$3$1;->this$1:Lcom/android/settings/de/DeviceEncryption$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/settings/de/DeviceEncryption$3$1;->this$1:Lcom/android/settings/de/DeviceEncryption$3;

    iget-object v0, v0, Lcom/android/settings/de/DeviceEncryption$3;->this$0:Lcom/android/settings/de/DeviceEncryption;

    invoke-static {v0}, Lcom/android/settings/de/DeviceEncryption;->access$200(Lcom/android/settings/de/DeviceEncryption;)V

    .line 322
    return-void
.end method
