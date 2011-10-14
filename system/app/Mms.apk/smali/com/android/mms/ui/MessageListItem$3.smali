.class Lcom/android/mms/ui/MessageListItem$3;
.super Landroid/widget/ArrayAdapter;
.source "MessageListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->onMessageListItemClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 856
    .local p4, x2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$3;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const-string v7, "tel:"

    .line 858
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 861
    .local v6, v:Landroid/view/View;
    if-nez p1, :cond_0

    :try_start_0
    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem$3;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 862
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListItem$3;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 863
    .local v5, url:Ljava/lang/String;
    move-object v0, v6

    check-cast v0, Landroid/widget/TextView;

    move-object v4, v0

    .line 865
    .local v4, tv:Landroid/widget/TextView;
    const/16 v7, 0x1e

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 866
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 867
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 907
    .end local v4           #tv:Landroid/widget/TextView;
    .end local v5           #url:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 869
    .restart local p0
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListItem$3;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 870
    .restart local v5       #url:Ljava/lang/String;
    move-object v0, v6

    check-cast v0, Landroid/widget/TextView;

    move-object v4, v0

    .line 871
    .restart local v4       #tv:Landroid/widget/TextView;
    const/4 v1, 0x0

    .line 874
    .local v1, d:Landroid/graphics/drawable/Drawable;
    const-string v2, "mailto:"

    .line 875
    .local v2, mailPrefix:Ljava/lang/String;
    const-string v7, "mailto:"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 876
    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem$3;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v7}, Lcom/android/mms/ui/MessageListItem;->access$700(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02010e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 891
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 892
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 893
    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem$3;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v7}, Lcom/android/mms/ui/MessageListItem;->access$1000(Lcom/android/mms/ui/MessageListItem;)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 894
    const/16 v7, 0xa

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 895
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v1, v7, v8, v9}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 897
    :cond_2
    const-string v3, "tel:"

    .line 898
    .local v3, telPrefix:Ljava/lang/String;
    const-string v7, "tel:"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 899
    const-string v7, "tel:"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 902
    :cond_3
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 904
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v2           #mailPrefix:Ljava/lang/String;
    .end local v3           #telPrefix:Ljava/lang/String;
    .end local v4           #tv:Landroid/widget/TextView;
    .end local v5           #url:Ljava/lang/String;
    .end local p0
    :catch_0
    move-exception v7

    goto :goto_0

    .line 879
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    .restart local v2       #mailPrefix:Ljava/lang/String;
    .restart local v4       #tv:Landroid/widget/TextView;
    .restart local v5       #url:Ljava/lang/String;
    .restart local p0
    :cond_4
    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem$3;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v7}, Lcom/android/mms/ui/MessageListItem;->access$800(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 883
    const-string v3, "tel:"

    .line 884
    .restart local v3       #telPrefix:Ljava/lang/String;
    const-string v7, "tel:"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 885
    iget-object v7, p0, Lcom/android/mms/ui/MessageListItem$3;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v7}, Lcom/android/mms/ui/MessageListItem;->access$900(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020051

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1
.end method
