.class public Lcom/android/mms/ui/FontSizeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FontSizeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mDensityScale:F

.field private mFontSizeNames:[Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/high16 v0, -0x8000

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/FontSizeAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 25
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/FontSizeAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/mms/ui/FontSizeAdapter;->mDensityScale:F

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FontSizeAdapter;->mFontSizeNames:[Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 32
    if-nez p2, :cond_0

    .line 33
    iget-object v2, p0, Lcom/android/mms/ui/FontSizeAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x1090012

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 37
    .local v1, v:Landroid/widget/TextView;
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/FontSizeAdapter;->mFontSizeNames:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    packed-switch p1, :pswitch_data_0

    .line 50
    :goto_1
    return-object v1

    .line 35
    .end local v1           #v:Landroid/widget/TextView;
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    .restart local v1       #v:Landroid/widget/TextView;
    goto :goto_0

    .line 41
    :pswitch_0
    sget v2, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_NORMAL:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_1

    .line 44
    :pswitch_1
    sget v2, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_SMALL:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_1

    .line 47
    :pswitch_2
    sget v2, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_TINY:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_1

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
