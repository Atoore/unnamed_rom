.class Lcom/android/mms/ui/ConversationComposer$1;
.super Ljava/lang/Object;
.source "ConversationComposer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationComposer;->initSplitManager()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationComposer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationComposer;)V
    .locals 0
    .parameter

    .prologue
    .line 739
    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer$1;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "ev"

    .prologue
    .line 741
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 742
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$1;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$000(Lcom/android/mms/ui/ConversationComposer;)Landroid/widget/ImageButton;

    move-result-object v1

    const v2, 0x7f020103

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 749
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 743
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 744
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v0, v1

    .line 745
    .local v0, x:I
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$1;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$100(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/SplitManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/SplitManager;->UpdateSplitPosition(I)Z

    goto :goto_0

    .line 746
    .end local v0           #x:I
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 747
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$1;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$000(Lcom/android/mms/ui/ConversationComposer;)Landroid/widget/ImageButton;

    move-result-object v1

    const v2, 0x7f020025

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method
