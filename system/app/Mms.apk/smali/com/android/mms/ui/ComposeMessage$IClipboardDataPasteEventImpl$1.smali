.class Lcom/android/mms/ui/ComposeMessage$IClipboardDataPasteEventImpl$1;
.super Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;
.source "ComposeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessage$IClipboardDataPasteEventImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessage$IClipboardDataPasteEventImpl;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessage$IClipboardDataPasteEventImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 7760
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$IClipboardDataPasteEventImpl$1;->this$1:Lcom/android/mms/ui/ComposeMessage$IClipboardDataPasteEventImpl;

    invoke-direct {p0}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7763
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$IClipboardDataPasteEventImpl$1;->this$1:Lcom/android/mms/ui/ComposeMessage$IClipboardDataPasteEventImpl;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ComposeMessage$IClipboardDataPasteEventImpl;->onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V

    .line 7764
    return-void
.end method
