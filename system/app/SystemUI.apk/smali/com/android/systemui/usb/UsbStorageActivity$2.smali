.class Lcom/android/systemui/usb/UsbStorageActivity$2;
.super Landroid/os/storage/StorageEventListener;
.source "UsbStorageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/UsbStorageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/UsbStorageActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/UsbStorageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/systemui/usb/UsbStorageActivity$2;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    const/4 v5, 0x0

    const-string v6, "mounted"

    .line 106
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, InterStoragePath:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    const-string v3, "shared"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    iget-object v3, p0, Lcom/android/systemui/usb/UsbStorageActivity$2;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/systemui/usb/UsbStorageActivity;->access$100(Lcom/android/systemui/usb/UsbStorageActivity;Z)V

    .line 114
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, extExterStoragePath:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageStateSd()Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, extExterStorageState:Ljava/lang/String;
    const-string v3, "removed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 120
    const-string v3, "mounted"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 121
    iget-object v3, p0, Lcom/android/systemui/usb/UsbStorageActivity$2;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    invoke-static {v3, v5}, Lcom/android/systemui/usb/UsbStorageActivity;->access$100(Lcom/android/systemui/usb/UsbStorageActivity;Z)V

    .line 131
    :cond_1
    :goto_0
    return-void

    .line 126
    :cond_2
    const-string v3, "mounted"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    iget-object v3, p0, Lcom/android/systemui/usb/UsbStorageActivity$2;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    invoke-static {v3, v5}, Lcom/android/systemui/usb/UsbStorageActivity;->access$100(Lcom/android/systemui/usb/UsbStorageActivity;Z)V

    goto :goto_0
.end method
