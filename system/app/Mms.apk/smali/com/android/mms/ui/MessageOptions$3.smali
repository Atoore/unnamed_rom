.class Lcom/android/mms/ui/MessageOptions$3;
.super Ljava/lang/Object;
.source "MessageOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageOptions;->showAttachmentList(Lcom/android/mms/model/SlideshowModel;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageOptions;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 1029
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$3;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1032
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 1034
    .local v1, listView:Landroid/widget/ListView;
    if-eqz v1, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x42

    if-eq v3, v4, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x17

    if-ne v3, v4, :cond_3

    .line 1038
    :cond_0
    invoke-virtual {v1}, Landroid/widget/ListView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1039
    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 1041
    .local v2, selectView:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1042
    const v3, 0x7f080001

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1044
    .local v0, ch:Landroid/widget/CheckBox;
    if-eqz v0, :cond_1

    .line 1045
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v6

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .end local v0           #ch:Landroid/widget/CheckBox;
    :cond_1
    move v3, v6

    .line 1051
    .end local v2           #selectView:Landroid/view/View;
    :goto_1
    return v3

    .restart local v0       #ch:Landroid/widget/CheckBox;
    .restart local v2       #selectView:Landroid/view/View;
    :cond_2
    move v3, v5

    .line 1045
    goto :goto_0

    .end local v0           #ch:Landroid/widget/CheckBox;
    .end local v2           #selectView:Landroid/view/View;
    :cond_3
    move v3, v5

    .line 1051
    goto :goto_1
.end method
