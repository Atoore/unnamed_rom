.class Lcom/android/mms/ui/ComposeMessage$IClipboardDataPasteEventImpl$2;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessage$IClipboardDataPasteEventImpl;->onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessage$IClipboardDataPasteEventImpl;

.field final synthetic val$dataInner:Landroid/sec/clipboard/data/ClipboardData;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessage$IClipboardDataPasteEventImpl;Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7770
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$IClipboardDataPasteEventImpl$2;->this$1:Lcom/android/mms/ui/ComposeMessage$IClipboardDataPasteEventImpl;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessage$IClipboardDataPasteEventImpl$2;->val$dataInner:Landroid/sec/clipboard/data/ClipboardData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 7773
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$IClipboardDataPasteEventImpl$2;->this$1:Lcom/android/mms/ui/ComposeMessage$IClipboardDataPasteEventImpl;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessage$IClipboardDataPasteEventImpl;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$IClipboardDataPasteEventImpl$2;->val$dataInner:Landroid/sec/clipboard/data/ClipboardData;

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessage;->access$11500(Lcom/android/mms/ui/ComposeMessage;Landroid/sec/clipboard/data/ClipboardData;)V

    .line 7774
    return-void
.end method
