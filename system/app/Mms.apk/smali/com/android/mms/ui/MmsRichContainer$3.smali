.class Lcom/android/mms/ui/MmsRichContainer$3;
.super Ljava/lang/Object;
.source "MmsRichContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsRichContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsRichContainer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsRichContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 921
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer$3;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "Mms/MmsRichContainer"

    .line 923
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v7, :cond_4

    .line 925
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 926
    .local v3, parent:Landroid/view/ViewGroup;
    if-nez v3, :cond_0

    .line 927
    const-string v5, "Mms/MmsRichContainer"

    const-string v5, "parent is null !!!"

    invoke-static {v8, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 954
    .end local v3           #parent:Landroid/view/ViewGroup;
    :goto_0
    return v5

    .line 931
    .restart local v3       #parent:Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 932
    .local v2, page:Landroid/view/ViewGroup;
    if-nez v2, :cond_1

    .line 933
    const-string v5, "Mms/MmsRichContainer"

    const-string v5, "page is null !!!"

    invoke-static {v8, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 934
    goto :goto_0

    .line 937
    :cond_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 938
    .local v4, richContainer:Landroid/view/ViewGroup;
    if-nez v4, :cond_2

    .line 939
    const-string v5, "Mms/MmsRichContainer"

    const-string v5, "richContainer is null !!!"

    invoke-static {v8, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 940
    goto :goto_0

    .line 943
    :cond_2
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 944
    .local v0, curPage:I
    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer$3;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v5, v0, v7}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    .line 946
    sget-boolean v1, Lcom/android/mms/ui/ComposeMessage;->isSipVisible:Z

    .line 947
    .local v1, isSipVisible:Z
    if-nez v1, :cond_3

    .line 948
    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer$3;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-static {v5}, Lcom/android/mms/ui/MmsRichContainer;->access$600(Lcom/android/mms/ui/MmsRichContainer;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    invoke-virtual {v5, v6, v6}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 949
    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer$3;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-static {v5}, Lcom/android/mms/ui/MmsRichContainer;->access$700(Lcom/android/mms/ui/MmsRichContainer;)Lcom/android/mms/ui/OnEventListener;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 950
    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer$3;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-static {v5}, Lcom/android/mms/ui/MmsRichContainer;->access$700(Lcom/android/mms/ui/MmsRichContainer;)Lcom/android/mms/ui/OnEventListener;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    :cond_3
    move v5, v7

    .line 952
    goto :goto_0

    .end local v0           #curPage:I
    .end local v1           #isSipVisible:Z
    .end local v2           #page:Landroid/view/ViewGroup;
    .end local v3           #parent:Landroid/view/ViewGroup;
    .end local v4           #richContainer:Landroid/view/ViewGroup;
    :cond_4
    move v5, v6

    .line 954
    goto :goto_0
.end method
