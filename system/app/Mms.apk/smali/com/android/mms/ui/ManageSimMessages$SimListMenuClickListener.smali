.class final Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;
.super Ljava/lang/Object;
.source "ManageSimMessages.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ManageSimMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SimListMenuClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ManageSimMessages;Lcom/android/mms/ui/ManageSimMessages$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v5, "Mms/ManageSimMessages"

    .line 285
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 288
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v3}, Lcom/android/mms/ui/ManageSimMessages;->access$000(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/ListView;

    move-result-object v3

    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 289
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_1

    .line 290
    :cond_0
    const-string v3, "Mms/ManageSimMessages"

    const-string v3, "onMenuItemClick Bad cursor."

    invoke-static {v5, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v6

    .line 318
    :goto_0
    return v3

    .line 294
    :cond_1
    const-string v3, "Mms/ManageSimMessages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SimListMenuClickListener.onMenuItemClick(),itemId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v3, v6

    .line 318
    goto :goto_0

    .line 298
    :pswitch_0
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v3, v0}, Lcom/android/mms/ui/ManageSimMessages;->access$900(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 299
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    const v5, 0x7f0900be

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :goto_1
    move v3, v7

    .line 304
    goto :goto_0

    .line 302
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    const v5, 0x7f090027

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 306
    :pswitch_1
    const-string v3, "index_on_icc"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, messageIndexString:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    new-instance v4, Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener$1;

    invoke-direct {v4, p0, v2}, Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener$1;-><init>(Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;Ljava/lang/String;)V

    const v5, 0x7f090094

    invoke-static {v3, v4, v5}, Lcom/android/mms/ui/ManageSimMessages;->access$1200(Lcom/android/mms/ui/ManageSimMessages;Landroid/content/DialogInterface$OnClickListener;I)V

    move v3, v7

    .line 316
    goto :goto_0

    .line 296
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
