.class public abstract Landroid/view/LayoutInflater;
.super Ljava/lang/Object;
.source "LayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/LayoutInflater$FactoryMerger;,
        Landroid/view/LayoutInflater$Factory;,
        Landroid/view/LayoutInflater$Filter;
    }
.end annotation


# static fields
.field private static final TAG_INCLUDE:Ljava/lang/String; = "include"

.field private static final TAG_MERGE:Ljava/lang/String; = "merge"

.field private static final TAG_REQUEST_FOCUS:Ljava/lang/String; = "requestFocus"

.field private static final mConstructorSignature:[Ljava/lang/Class;

.field private static final sConstructorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DEBUG:Z

.field private final mConstructorArgs:[Ljava/lang/Object;

.field protected final mContext:Landroid/content/Context;

.field private mFactory:Landroid/view/LayoutInflater$Factory;

.field private mFactorySet:Z

.field private mFilter:Landroid/view/LayoutInflater$Filter;

.field private mFilterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/LayoutInflater;->mConstructorSignature:[Ljava/lang/Class;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/view/LayoutInflater;->sConstructorMap:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/LayoutInflater;->DEBUG:Z

    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 150
    iput-object p1, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    .line 151
    return-void
.end method

.method protected constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V
    .registers 4
    .parameter "original"
    .parameter "newContext"

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/LayoutInflater;->DEBUG:Z

    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 162
    iput-object p2, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    .line 163
    iget-object v0, p1, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    .line 164
    iget-object v0, p1, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    .line 165
    return-void
.end method

.method private failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "name"
    .parameter "prefix"
    .parameter "attrs"

    .prologue
    .line 530
    new-instance v0, Landroid/view/InflateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Class not allowed to be inflated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_34

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 533
    .local v0, ie:Landroid/view/InflateException;
    throw v0

    .end local v0           #ie:Landroid/view/InflateException;
    :cond_34
    move-object v2, p1

    .line 530
    goto :goto_28
.end method

.method public static from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .registers 4
    .parameter "context"

    .prologue
    .line 171
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 173
    .local v0, LayoutInflater:Landroid/view/LayoutInflater;
    if-nez v0, :cond_12

    .line 174
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "LayoutInflater not found."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 176
    :cond_12
    return-object v0
.end method

.method private parseInclude(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;)V
    .registers 27
    .parameter "parser"
    .parameter "parent"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 650
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v19, v0

    if-eqz v19, :cond_18c

    .line 651
    const/16 v19, 0x0

    const-string v20, "layout"

    const/16 v21, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v13

    .line 652
    .local v13, layout:I
    if-nez v13, :cond_57

    .line 653
    const/16 v19, 0x0

    const-string v20, "layout"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 654
    .local v16, value:Ljava/lang/String;
    if-nez v16, :cond_34

    .line 655
    new-instance v19, Landroid/view/InflateException;

    const-string v20, "You must specifiy a layout in the include tag: <include layout=\"@layout/layoutID\" />"

    invoke-direct/range {v19 .. v20}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 658
    :cond_34
    new-instance v19, Landroid/view/InflateException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "You must specifiy a valid layout reference. The layout ID "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " is not valid."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 662
    .end local v16           #value:Ljava/lang/String;
    :cond_57
    invoke-virtual/range {p0 .. p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .line 666
    .local v8, childParser:Landroid/content/res/XmlResourceParser;
    :try_start_66
    invoke-static {v8}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 669
    .local v6, childAttrs:Landroid/util/AttributeSet;
    :cond_6a
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    .local v15, type:I
    const/16 v19, 0x2

    move v0, v15

    move/from16 v1, v19

    if-eq v0, v1, :cond_7c

    const/16 v19, 0x1

    move v0, v15

    move/from16 v1, v19

    if-ne v0, v1, :cond_6a

    .line 673
    :cond_7c
    const/16 v19, 0x2

    move v0, v15

    move/from16 v1, v19

    if-eq v0, v1, :cond_a5

    .line 674
    new-instance v19, Landroid/view/InflateException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ": No start tag found!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_a0
    .catchall {:try_start_66 .. :try_end_a0} :catchall_a0

    .line 737
    .end local v6           #childAttrs:Landroid/util/AttributeSet;
    .end local v15           #type:I
    :catchall_a0
    move-exception v19

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    throw v19

    .line 678
    .restart local v6       #childAttrs:Landroid/util/AttributeSet;
    .restart local v15       #type:I
    :cond_a5
    :try_start_a5
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 680
    .local v7, childName:Ljava/lang/String;
    const-string/jumbo v19, "merge"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e1

    .line 682
    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, p2

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;)V
    :try_end_be
    .catchall {:try_start_a5 .. :try_end_be} :catchall_a0

    .line 737
    :goto_be
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    .line 744
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    .line 746
    .local v9, currentDepth:I
    :cond_c5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    const/16 v19, 0x3

    move v0, v15

    move/from16 v1, v19

    if-ne v0, v1, :cond_d9

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v19

    move/from16 v0, v19

    move v1, v9

    if-le v0, v1, :cond_e0

    :cond_d9
    const/16 v19, 0x1

    move v0, v15

    move/from16 v1, v19

    if-ne v0, v1, :cond_c5

    .line 749
    :cond_e0
    return-void

    .line 684
    .end local v9           #currentDepth:I
    :cond_e1
    :try_start_e1
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->createViewFromTag(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v17

    .line 685
    .local v17, view:Landroid/view/View;
    move-object/from16 v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v11, v0
    :try_end_ee
    .catchall {:try_start_e1 .. :try_end_ee} :catchall_a0

    .line 695
    .local v11, group:Landroid/view/ViewGroup;
    const/4 v14, 0x0

    .line 697
    .local v14, params:Landroid/view/ViewGroup$LayoutParams;
    :try_start_ef
    move-object v0, v11

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    :try_end_f5
    .catchall {:try_start_ef .. :try_end_f5} :catchall_164
    .catch Ljava/lang/RuntimeException; {:try_start_ef .. :try_end_f5} :catch_156

    move-result-object v14

    .line 701
    if-eqz v14, :cond_fe

    .line 702
    :try_start_f8
    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 707
    :cond_fe
    :goto_fe
    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, v17

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/R$styleable;->View:[I

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    move-object/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 713
    .local v5, a:Landroid/content/res/TypedArray;
    const/16 v19, 0x8

    const/16 v20, -0x1

    move-object v0, v5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 715
    .local v12, id:I
    const/16 v19, 0x14

    const/16 v20, -0x1

    move-object v0, v5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    .line 716
    .local v18, visibility:I
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 718
    const/16 v19, -0x1

    move v0, v12

    move/from16 v1, v19

    if-eq v0, v1, :cond_14b

    .line 719
    move-object/from16 v0, v17

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 722
    :cond_14b
    packed-switch v18, :pswitch_data_194

    .line 734
    :goto_14e
    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_154
    .catchall {:try_start_f8 .. :try_end_154} :catchall_a0

    goto/16 :goto_be

    .line 698
    .end local v5           #a:Landroid/content/res/TypedArray;
    .end local v12           #id:I
    .end local v18           #visibility:I
    :catch_156
    move-exception v10

    .line 699
    .local v10, e:Ljava/lang/RuntimeException;
    :try_start_157
    invoke-virtual {v11, v6}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    :try_end_15a
    .catchall {:try_start_157 .. :try_end_15a} :catchall_164

    move-result-object v14

    .line 701
    if-eqz v14, :cond_fe

    .line 702
    :try_start_15d
    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_fe

    .line 701
    .end local v10           #e:Ljava/lang/RuntimeException;
    :catchall_164
    move-exception v19

    if-eqz v14, :cond_16d

    .line 702
    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_16d
    throw v19

    .line 724
    .restart local v5       #a:Landroid/content/res/TypedArray;
    .restart local v12       #id:I
    .restart local v18       #visibility:I
    :pswitch_16e
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_14e

    .line 727
    :pswitch_178
    const/16 v19, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_14e

    .line 730
    :pswitch_182
    const/16 v19, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_18b
    .catchall {:try_start_15d .. :try_end_18b} :catchall_a0

    goto :goto_14e

    .line 741
    .end local v5           #a:Landroid/content/res/TypedArray;
    .end local v6           #childAttrs:Landroid/util/AttributeSet;
    .end local v7           #childName:Ljava/lang/String;
    .end local v8           #childParser:Landroid/content/res/XmlResourceParser;
    .end local v11           #group:Landroid/view/ViewGroup;
    .end local v12           #id:I
    .end local v13           #layout:I
    .end local v14           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v15           #type:I
    .end local v17           #view:Landroid/view/View;
    .end local v18           #visibility:I
    :cond_18c
    new-instance v19, Landroid/view/InflateException;

    const-string v20, "<include /> can only be used inside of a ViewGroup"

    invoke-direct/range {v19 .. v20}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 722
    :pswitch_data_194
    .packed-switch 0x0
        :pswitch_16e
        :pswitch_178
        :pswitch_182
    .end packed-switch
.end method

.method private parseRequestFocus(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;)V
    .registers 6
    .parameter "parser"
    .parameter "parent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 637
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 638
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 640
    .local v0, currentDepth:I
    :cond_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, type:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v0, :cond_17

    :cond_14
    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 643
    :cond_17
    return-void
.end method

.method private rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;)V
    .registers 13
    .parameter "parser"
    .parameter "parent"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 601
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 605
    .local v1, depth:I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, type:I
    const/4 v7, 0x3

    if-ne v4, v7, :cond_11

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v1, :cond_66

    :cond_11
    const/4 v7, 0x1

    if-eq v4, v7, :cond_66

    .line 607
    const/4 v7, 0x2

    if-ne v4, v7, :cond_4

    .line 611
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 613
    .local v2, name:Ljava/lang/String;
    const-string/jumbo v7, "requestFocus"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 614
    invoke-direct {p0, p1, p2}, Landroid/view/LayoutInflater;->parseRequestFocus(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;)V

    goto :goto_4

    .line 615
    :cond_28
    const-string v7, "include"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    .line 616
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-nez v7, :cond_3e

    .line 617
    new-instance v7, Landroid/view/InflateException;

    const-string v8, "<include /> cannot be the root element"

    invoke-direct {v7, v8}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 619
    :cond_3e
    invoke-direct {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->parseInclude(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 620
    :cond_42
    const-string/jumbo v7, "merge"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_53

    .line 621
    new-instance v7, Landroid/view/InflateException;

    const-string v8, "<merge /> must be the root element"

    invoke-direct {v7, v8}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 623
    :cond_53
    invoke-virtual {p0, v2, p3}, Landroid/view/LayoutInflater;->createViewFromTag(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v5

    .line 624
    .local v5, view:Landroid/view/View;
    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v6, v0

    .line 625
    .local v6, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v6, p3}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 626
    .local v3, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {p0, p1, v5, p3}, Landroid/view/LayoutInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 627
    invoke-virtual {v6, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 631
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v5           #view:Landroid/view/View;
    .end local v6           #viewGroup:Landroid/view/ViewGroup;
    :cond_66
    invoke-virtual {p2}, Landroid/view/View;->onFinishInflate()V

    .line 632
    return-void
.end method


# virtual methods
.method public abstract cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
.end method

.method public final createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 15
    .parameter "name"
    .parameter "prefix"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const-string v10, ": Error inflating class "

    .line 465
    sget-object v7, Landroid/view/LayoutInflater;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Constructor;

    .line 466
    .local v4, constructor:Ljava/lang/reflect/Constructor;
    const/4 v3, 0x0

    .line 469
    .local v3, clazz:Ljava/lang/Class;
    if-nez v4, :cond_55

    .line 471
    :try_start_e
    iget-object v7, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    if-eqz p2, :cond_53

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_27
    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 474
    iget-object v7, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    if-eqz v7, :cond_3c

    if-eqz v3, :cond_3c

    .line 475
    iget-object v7, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    invoke-interface {v7, v3}, Landroid/view/LayoutInflater$Filter;->onLoadClass(Ljava/lang/Class;)Z

    move-result v0

    .line 476
    .local v0, allowed:Z
    if-nez v0, :cond_3c

    .line 477
    invoke-direct {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 480
    .end local v0           #allowed:Z
    :cond_3c
    sget-object v7, Landroid/view/LayoutInflater;->mConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {v3, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 481
    sget-object v7, Landroid/view/LayoutInflater;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    :cond_47
    :goto_47
    iget-object v2, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 504
    .local v2, args:[Ljava/lang/Object;
    const/4 v7, 0x1

    aput-object p3, v2, v7

    .line 505
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    return-object p0

    .end local v2           #args:[Ljava/lang/Object;
    .restart local p0
    :cond_53
    move-object v8, p1

    .line 471
    goto :goto_27

    .line 484
    :cond_55
    iget-object v7, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    if-eqz v7, :cond_47

    .line 486
    iget-object v7, p0, Landroid/view/LayoutInflater;->mFilterMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 487
    .local v1, allowedState:Ljava/lang/Boolean;
    if-nez v1, :cond_d8

    .line 489
    iget-object v7, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    if-eqz p2, :cond_d3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_7c
    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 492
    if-eqz v3, :cond_d5

    iget-object v7, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    invoke-interface {v7, v3}, Landroid/view/LayoutInflater$Filter;->onLoadClass(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_d5

    move v0, v9

    .line 493
    .restart local v0       #allowed:Z
    :goto_8b
    iget-object v7, p0, Landroid/view/LayoutInflater;->mFilterMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    if-nez v0, :cond_47

    .line 495
    invoke-direct {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V
    :try_end_99
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e .. :try_end_99} :catch_9a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_99} :catch_e5
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_99} :catch_ea

    goto :goto_47

    .line 507
    .end local v0           #allowed:Z
    .end local v1           #allowedState:Ljava/lang/Boolean;
    .end local p0
    :catch_9a
    move-exception v7

    move-object v5, v7

    .line 508
    .local v5, e:Ljava/lang/NoSuchMethodException;
    new-instance v6, Landroid/view/InflateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": Error inflating class "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p2, :cond_e8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_c4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 511
    .local v6, ie:Landroid/view/InflateException;
    invoke-virtual {v6, v5}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 512
    throw v6

    .end local v5           #e:Ljava/lang/NoSuchMethodException;
    .end local v6           #ie:Landroid/view/InflateException;
    .restart local v1       #allowedState:Ljava/lang/Boolean;
    .restart local p0
    :cond_d3
    move-object v8, p1

    .line 489
    goto :goto_7c

    .line 492
    :cond_d5
    const/4 v7, 0x0

    move v0, v7

    goto :goto_8b

    .line 497
    :cond_d8
    :try_start_d8
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_47

    .line 498
    invoke-direct {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V
    :try_end_e3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d8 .. :try_end_e3} :catch_9a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d8 .. :try_end_e3} :catch_e5
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_e3} :catch_ea

    goto/16 :goto_47

    .line 514
    .end local v1           #allowedState:Ljava/lang/Boolean;
    .end local p0
    :catch_e5
    move-exception v7

    move-object v5, v7

    .line 516
    .local v5, e:Ljava/lang/ClassNotFoundException;
    throw v5

    .local v5, e:Ljava/lang/NoSuchMethodException;
    :cond_e8
    move-object v8, p1

    .line 508
    goto :goto_c4

    .line 517
    .end local v5           #e:Ljava/lang/NoSuchMethodException;
    :catch_ea
    move-exception v7

    move-object v5, v7

    .line 518
    .local v5, e:Ljava/lang/Exception;
    new-instance v6, Landroid/view/InflateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": Error inflating class "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v3, :cond_114

    const-string v8, "<unknown>"

    :goto_105
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 521
    .restart local v6       #ie:Landroid/view/InflateException;
    invoke-virtual {v6, v5}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 522
    throw v6

    .line 518
    .end local v6           #ie:Landroid/view/InflateException;
    :cond_114
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    goto :goto_105
.end method

.method createViewFromTag(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 9
    .parameter "name"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const-string v5, ": Error inflating class "

    .line 556
    const-string/jumbo v3, "view"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 557
    const-string v3, "class"

    invoke-interface {p2, v4, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 563
    :cond_12
    :try_start_12
    iget-object v3, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    if-nez v3, :cond_27

    move-object v2, v4

    .line 566
    .local v2, view:Landroid/view/View;
    :goto_17
    if-nez v2, :cond_26

    .line 567
    const/4 v3, -0x1

    const/16 v4, 0x2e

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v3, v4, :cond_31

    .line 568
    invoke-virtual {p0, p1, p2}, Landroid/view/LayoutInflater;->onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v2

    .line 575
    :cond_26
    :goto_26
    return-object v2

    .line 563
    .end local v2           #view:Landroid/view/View;
    :cond_27
    iget-object v3, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    iget-object v4, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    invoke-interface {v3, p1, v4, p2}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    goto :goto_17

    .line 570
    .restart local v2       #view:Landroid/view/View;
    :cond_31
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3, p2}, Landroid/view/LayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_35
    .catch Landroid/view/InflateException; {:try_start_12 .. :try_end_35} :catch_37
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_35} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_35} :catch_60

    move-result-object v2

    goto :goto_26

    .line 577
    .end local v2           #view:Landroid/view/View;
    :catch_37
    move-exception v3

    move-object v0, v3

    .line 578
    .local v0, e:Landroid/view/InflateException;
    throw v0

    .line 580
    .end local v0           #e:Landroid/view/InflateException;
    :catch_3a
    move-exception v3

    move-object v0, v3

    .line 581
    .local v0, e:Ljava/lang/ClassNotFoundException;
    new-instance v1, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Error inflating class "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 583
    .local v1, ie:Landroid/view/InflateException;
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 584
    throw v1

    .line 586
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    .end local v1           #ie:Landroid/view/InflateException;
    :catch_60
    move-exception v3

    move-object v0, v3

    .line 587
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Error inflating class "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 589
    .restart local v1       #ie:Landroid/view/InflateException;
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 590
    throw v1
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getFactory()Landroid/view/LayoutInflater$Factory;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    return-object v0
.end method

.method public getFilter()Landroid/view/LayoutInflater$Filter;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    return-object v0
.end method

.method public inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 4
    .parameter "resource"
    .parameter "root"

    .prologue
    .line 276
    if-eqz p2, :cond_8

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .registers 6
    .parameter "resource"
    .parameter "root"
    .parameter "attachToRoot"

    .prologue
    .line 318
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 320
    .local v0, parser:Landroid/content/res/XmlResourceParser;
    :try_start_c
    invoke-virtual {p0, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_14

    move-result-object v1

    .line 322
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v1

    :catchall_14
    move-exception v1

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    throw v1
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4
    .parameter "parser"
    .parameter "root"

    .prologue
    .line 296
    if-eqz p2, :cond_8

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .registers 22
    .parameter "parser"
    .parameter "root"
    .parameter "attachToRoot"

    .prologue
    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    move-object v13, v0

    monitor-enter v13

    .line 350
    :try_start_6
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 351
    .local v4, attrs:Landroid/util/AttributeSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    move-object v14, v0

    const/4 v15, 0x0

    aget-object v7, v14, v15

    check-cast v7, Landroid/content/Context;

    .line 352
    .local v7, lastContext:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    move-object v14, v0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    aput-object v16, v14, v15
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_73

    .line 353
    move-object/from16 v10, p2

    .line 359
    .local v10, result:Landroid/view/View;
    :cond_24
    :try_start_24
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    .local v12, type:I
    const/4 v14, 0x2

    if-eq v12, v14, :cond_2e

    const/4 v14, 0x1

    if-ne v12, v14, :cond_24

    .line 363
    :cond_2e
    const/4 v14, 0x2

    if-eq v12, v14, :cond_76

    .line 364
    new-instance v14, Landroid/view/InflateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": No start tag found!"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_4e
    .catchall {:try_start_24 .. :try_end_4e} :catchall_5d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_24 .. :try_end_4e} :catch_4e
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_4e} :catch_8f

    .line 426
    .end local v12           #type:I
    :catch_4e
    move-exception v14

    move-object v5, v14

    .line 427
    .local v5, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_50
    new-instance v6, Landroid/view/InflateException;

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v14}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 428
    .local v6, ex:Landroid/view/InflateException;
    invoke-virtual {v6, v5}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 429
    throw v6
    :try_end_5d
    .catchall {:try_start_50 .. :try_end_5d} :catchall_5d

    .line 438
    .end local v5           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v6           #ex:Landroid/view/InflateException;
    :catchall_5d
    move-exception v14

    :try_start_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    move-object v15, v0

    const/16 v16, 0x0

    aput-object v7, v15, v16

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    move-object v15, v0

    const/16 v16, 0x1

    const/16 v17, 0x0

    aput-object v17, v15, v16

    throw v14

    .line 443
    .end local v4           #attrs:Landroid/util/AttributeSet;
    .end local v7           #lastContext:Landroid/content/Context;
    .end local v10           #result:Landroid/view/View;
    :catchall_73
    move-exception v14

    monitor-exit v13
    :try_end_75
    .catchall {:try_start_5e .. :try_end_75} :catchall_73

    throw v14

    .line 368
    .restart local v4       #attrs:Landroid/util/AttributeSet;
    .restart local v7       #lastContext:Landroid/content/Context;
    .restart local v10       #result:Landroid/view/View;
    .restart local v12       #type:I
    :cond_76
    :try_start_76
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 377
    .local v8, name:Ljava/lang/String;
    const-string/jumbo v14, "merge"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d7

    .line 378
    if-eqz p2, :cond_87

    if-nez p3, :cond_b9

    .line 379
    :cond_87
    new-instance v14, Landroid/view/InflateException;

    const-string v15, "<merge /> can be used only with a valid ViewGroup root and attachToRoot=true"

    invoke-direct {v14, v15}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_8f
    .catchall {:try_start_76 .. :try_end_8f} :catchall_5d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_76 .. :try_end_8f} :catch_4e
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_8f} :catch_8f

    .line 430
    .end local v8           #name:Ljava/lang/String;
    .end local v12           #type:I
    :catch_8f
    move-exception v14

    move-object v5, v14

    .line 431
    .local v5, e:Ljava/io/IOException;
    :try_start_91
    new-instance v6, Landroid/view/InflateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v14}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 434
    .restart local v6       #ex:Landroid/view/InflateException;
    invoke-virtual {v6, v5}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 435
    throw v6
    :try_end_b9
    .catchall {:try_start_91 .. :try_end_b9} :catchall_5d

    .line 383
    .end local v5           #e:Ljava/io/IOException;
    .end local v6           #ex:Landroid/view/InflateException;
    .restart local v8       #name:Ljava/lang/String;
    .restart local v12       #type:I
    :cond_b9
    :try_start_b9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;)V
    :try_end_c3
    .catchall {:try_start_b9 .. :try_end_c3} :catchall_5d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b9 .. :try_end_c3} :catch_4e
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_c3} :catch_8f

    .line 438
    :cond_c3
    :goto_c3
    :try_start_c3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    move-object v14, v0

    const/4 v15, 0x0

    aput-object v7, v14, v15

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    move-object v14, v0

    const/4 v15, 0x1

    const/16 v16, 0x0

    aput-object v16, v14, v15

    .line 442
    monitor-exit v13
    :try_end_d6
    .catchall {:try_start_c3 .. :try_end_d6} :catchall_73

    return-object v10

    .line 386
    :cond_d7
    :try_start_d7
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->createViewFromTag(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v11

    .line 388
    .local v11, temp:Landroid/view/View;
    const/4 v9, 0x0

    .line 390
    .local v9, params:Landroid/view/ViewGroup$LayoutParams;
    if-eqz p2, :cond_ee

    .line 396
    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 397
    if-nez p3, :cond_ee

    .line 400
    invoke-virtual {v11, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    :cond_ee
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v11

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 415
    if-eqz p2, :cond_102

    if-eqz p3, :cond_102

    .line 416
    move-object/from16 v0, p2

    move-object v1, v11

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_102
    .catchall {:try_start_d7 .. :try_end_102} :catchall_5d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d7 .. :try_end_102} :catch_4e
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_102} :catch_8f

    .line 421
    :cond_102
    if-eqz p2, :cond_106

    if-nez p3, :cond_c3

    .line 422
    :cond_106
    move-object v10, v11

    goto :goto_c3
.end method

.method protected onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 4
    .parameter "name"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 549
    const-string v0, "android.view."

    invoke-virtual {p0, p1, v0, p2}, Landroid/view/LayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setFactory(Landroid/view/LayoutInflater$Factory;)V
    .registers 4
    .parameter "factory"

    .prologue
    .line 226
    iget-boolean v0, p0, Landroid/view/LayoutInflater;->mFactorySet:Z

    if-eqz v0, :cond_c

    .line 227
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A factory has already been set on this LayoutInflater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_c
    if-nez p1, :cond_16

    .line 230
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Given factory can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_16
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/LayoutInflater;->mFactorySet:Z

    .line 233
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    if-nez v0, :cond_20

    .line 234
    iput-object p1, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    .line 238
    :goto_1f
    return-void

    .line 236
    :cond_20
    new-instance v0, Landroid/view/LayoutInflater$FactoryMerger;

    iget-object v1, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    invoke-direct {v0, p1, v1}, Landroid/view/LayoutInflater$FactoryMerger;-><init>(Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory;)V

    iput-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    goto :goto_1f
.end method

.method public setFilter(Landroid/view/LayoutInflater$Filter;)V
    .registers 3
    .parameter "filter"

    .prologue
    .line 258
    iput-object p1, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    .line 259
    if-eqz p1, :cond_b

    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/view/LayoutInflater;->mFilterMap:Ljava/util/HashMap;

    .line 262
    :cond_b
    return-void
.end method
