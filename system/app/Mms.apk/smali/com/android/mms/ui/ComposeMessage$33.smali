.class Lcom/android/mms/ui/ComposeMessage$33;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessage;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessage;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessage;)V
    .locals 0
    .parameter

    .prologue
    .line 3386
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$33;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNumberSet(I)V
    .locals 3
    .parameter "number"

    .prologue
    .line 3388
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$33;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$33;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$100(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v1

    mul-int/lit16 v2, p1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessage;->access$5400(Lcom/android/mms/ui/ComposeMessage;II)V

    .line 3389
    return-void
.end method
