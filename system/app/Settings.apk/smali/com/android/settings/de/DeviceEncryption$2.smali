.class Lcom/android/settings/de/DeviceEncryption$2;
.super Landroid/os/storage/StorageEventListener;
.source "DeviceEncryption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/de/DeviceEncryption;
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
    .line 123
    iput-object p1, p0, Lcom/android/settings/de/DeviceEncryption$2;->this$0:Lcom/android/settings/de/DeviceEncryption;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/de/DeviceEncryption$2;->this$0:Lcom/android/settings/de/DeviceEncryption;

    invoke-static {v0}, Lcom/android/settings/de/DeviceEncryption;->access$000(Lcom/android/settings/de/DeviceEncryption;)V

    .line 128
    return-void
.end method
