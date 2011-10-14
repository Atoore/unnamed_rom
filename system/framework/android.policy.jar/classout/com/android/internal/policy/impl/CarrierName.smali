.class Lcom/android/internal/policy/impl/CarrierName;
.super Landroid/widget/LinearLayout;
.source "CarrierName.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "CarrierName"


# instance fields
.field private mCarrier:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/CarrierName;->mCarrier:Landroid/widget/TextView;

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 51
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x1090077

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 53
    const v1, 0x10201fa

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/CarrierName;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/CarrierName;->mCarrier:Landroid/widget/TextView;

    .line 55
    return-void
.end method


# virtual methods
.method public RefreshCarrierName(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "plmn"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/CarrierName;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method
