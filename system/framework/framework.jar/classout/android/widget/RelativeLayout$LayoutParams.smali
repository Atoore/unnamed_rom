.class public Landroid/widget/RelativeLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "RelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public alignWithParent:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBottom:I

.field private mLeft:I

.field private mRight:I

.field private mRules:[I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        indexMapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "above"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "alignBaseline"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8
                to = "alignBottom"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "alignLeft"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xc
                to = "alignParentBottom"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x9
                to = "alignParentLeft"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xb
                to = "alignParentRight"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xa
                to = "alignParentTop"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7
                to = "alignRight"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x6
                to = "alignTop"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "below"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xe
                to = "centerHorizontal"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xd
                to = "center"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xf
                to = "centerVertical"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "leftOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "rightOf"
            .end subannotation
        }
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "true"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "false/NO_ID"
            .end subannotation
        }
        resolveId = true
    .end annotation
.end field

.field private mTop:I


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1119
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1017
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 12
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 1050
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1017
    const/16 v5, 0x10

    new-array v5, v5, [I

    iput-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1052
    sget-object v5, Lcom/android/internal/R$styleable;->RelativeLayout_Layout:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1055
    .local v1, a:Landroid/content/res/TypedArray;
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1057
    .local v4, rules:[I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 1058
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_18
    if-ge v3, v0, :cond_d9

    .line 1059
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 1060
    .local v2, attr:I
    packed-switch v2, :pswitch_data_de

    .line 1058
    :goto_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 1062
    :pswitch_24
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    goto :goto_21

    .line 1065
    :pswitch_2b
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    aput v5, v4, v7

    goto :goto_21

    .line 1068
    :pswitch_32
    const/4 v5, 0x1

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    aput v6, v4, v5

    goto :goto_21

    .line 1071
    :pswitch_3a
    const/4 v5, 0x2

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    aput v6, v4, v5

    goto :goto_21

    .line 1074
    :pswitch_42
    const/4 v5, 0x3

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    aput v6, v4, v5

    goto :goto_21

    .line 1077
    :pswitch_4a
    const/4 v5, 0x4

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    aput v6, v4, v5

    goto :goto_21

    .line 1080
    :pswitch_52
    const/4 v5, 0x5

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    aput v6, v4, v5

    goto :goto_21

    .line 1083
    :pswitch_5a
    const/4 v5, 0x6

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    aput v6, v4, v5

    goto :goto_21

    .line 1086
    :pswitch_62
    const/4 v5, 0x7

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    aput v6, v4, v5

    goto :goto_21

    .line 1089
    :pswitch_6a
    const/16 v5, 0x8

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    aput v6, v4, v5

    goto :goto_21

    .line 1092
    :pswitch_73
    const/16 v5, 0x9

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_7f

    move v6, v8

    :goto_7c
    aput v6, v4, v5

    goto :goto_21

    :cond_7f
    move v6, v7

    goto :goto_7c

    .line 1095
    :pswitch_81
    const/16 v5, 0xa

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_8d

    move v6, v8

    :goto_8a
    aput v6, v4, v5

    goto :goto_21

    :cond_8d
    move v6, v7

    goto :goto_8a

    .line 1098
    :pswitch_8f
    const/16 v5, 0xb

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_9b

    move v6, v8

    :goto_98
    aput v6, v4, v5

    goto :goto_21

    :cond_9b
    move v6, v7

    goto :goto_98

    .line 1101
    :pswitch_9d
    const/16 v5, 0xc

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_aa

    move v6, v8

    :goto_a6
    aput v6, v4, v5

    goto/16 :goto_21

    :cond_aa
    move v6, v7

    goto :goto_a6

    .line 1104
    :pswitch_ac
    const/16 v5, 0xd

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_b9

    move v6, v8

    :goto_b5
    aput v6, v4, v5

    goto/16 :goto_21

    :cond_b9
    move v6, v7

    goto :goto_b5

    .line 1107
    :pswitch_bb
    const/16 v5, 0xe

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_c8

    move v6, v8

    :goto_c4
    aput v6, v4, v5

    goto/16 :goto_21

    :cond_c8
    move v6, v7

    goto :goto_c4

    .line 1110
    :pswitch_ca
    const/16 v5, 0xf

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_d7

    move v6, v8

    :goto_d3
    aput v6, v4, v5

    goto/16 :goto_21

    :cond_d7
    move v6, v7

    goto :goto_d3

    .line 1115
    .end local v2           #attr:I
    :cond_d9
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1116
    return-void

    .line 1060
    nop

    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_32
        :pswitch_3a
        :pswitch_42
        :pswitch_4a
        :pswitch_52
        :pswitch_5a
        :pswitch_62
        :pswitch_6a
        :pswitch_73
        :pswitch_81
        :pswitch_8f
        :pswitch_9d
        :pswitch_ac
        :pswitch_bb
        :pswitch_ca
        :pswitch_24
    .end packed-switch
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 1126
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1017
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1127
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 1133
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1017
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1134
    return-void
.end method

.method static synthetic access$100(Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 1016
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return v0
.end method

.method static synthetic access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1016
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return p1
.end method

.method static synthetic access$112(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1016
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 1016
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return v0
.end method

.method static synthetic access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1016
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return p1
.end method

.method static synthetic access$212(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1016
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 1016
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return v0
.end method

.method static synthetic access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1016
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return p1
.end method

.method static synthetic access$312(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1016
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 1016
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return v0
.end method

.method static synthetic access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1016
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return p1
.end method

.method static synthetic access$412(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1016
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/RelativeLayout$LayoutParams;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 1016
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object v0
.end method


# virtual methods
.method public addRule(I)V
    .registers 4
    .parameter "verb"

    .prologue
    .line 1155
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v1, -0x1

    aput v1, v0, p1

    .line 1156
    return-void
.end method

.method public addRule(II)V
    .registers 4
    .parameter "verb"
    .parameter "anchor"

    .prologue
    .line 1173
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput p2, v0, p1

    .line 1174
    return-void
.end method

.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "output"

    .prologue
    .line 1138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ViewGroup.LayoutParams={ width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRules()[I
    .registers 2

    .prologue
    .line 1185
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object v0
.end method
