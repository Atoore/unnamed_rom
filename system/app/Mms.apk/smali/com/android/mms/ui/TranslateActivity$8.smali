.class Lcom/android/mms/ui/TranslateActivity$8;
.super Ljava/lang/Object;
.source "TranslateActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/TranslateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/TranslateActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/TranslateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 937
    iput-object p1, p0, Lcom/android/mms/ui/TranslateActivity$8;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "view"
    .parameter "motionEvent"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 940
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 955
    :goto_0
    return v0

    .line 944
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 945
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity$8;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v0}, Lcom/android/mms/ui/TranslateActivity;->access$900(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 946
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity$8;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v0}, Lcom/android/mms/ui/TranslateActivity;->access$900(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 947
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity$8;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity$8;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v1}, Lcom/android/mms/ui/TranslateActivity;->access$900(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1, v2, v2}, Lcom/android/mms/ui/TranslateActivity;->access$1300(Lcom/android/mms/ui/TranslateActivity;Landroid/view/View;ZZ)V

    .line 948
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity$8;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity$8;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v1}, Lcom/android/mms/ui/TranslateActivity;->access$1500(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1, v3, v2}, Lcom/android/mms/ui/TranslateActivity;->access$1300(Lcom/android/mms/ui/TranslateActivity;Landroid/view/View;ZZ)V

    :cond_1
    :goto_1
    move v0, v3

    .line 955
    goto :goto_0

    .line 949
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity$8;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v0}, Lcom/android/mms/ui/TranslateActivity;->access$1500(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 950
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity$8;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v0}, Lcom/android/mms/ui/TranslateActivity;->access$1500(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 951
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity$8;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity$8;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v1}, Lcom/android/mms/ui/TranslateActivity;->access$900(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1, v3, v2}, Lcom/android/mms/ui/TranslateActivity;->access$1300(Lcom/android/mms/ui/TranslateActivity;Landroid/view/View;ZZ)V

    .line 952
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity$8;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity$8;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v1}, Lcom/android/mms/ui/TranslateActivity;->access$1500(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1, v2, v2}, Lcom/android/mms/ui/TranslateActivity;->access$1300(Lcom/android/mms/ui/TranslateActivity;Landroid/view/View;ZZ)V

    goto :goto_1
.end method
