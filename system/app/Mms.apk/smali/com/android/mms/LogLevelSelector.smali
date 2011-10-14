.class public Lcom/android/mms/LogLevelSelector;
.super Landroid/app/ListActivity;
.source "LogLevelSelector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 17
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x109000f

    invoke-static {}, Lcom/android/mms/Log;->getLevelNames()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/android/mms/LogLevelSelector;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 22
    invoke-virtual {p0}, Lcom/android/mms/LogLevelSelector;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 24
    .local v0, listView:Landroid/widget/ListView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 25
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 26
    invoke-static {}, Lcom/android/mms/Log;->getCurrentLevel()I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 28
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 33
    invoke-static {p3}, Lcom/android/mms/Log;->setLevel(I)V

    .line 35
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 36
    return-void
.end method
