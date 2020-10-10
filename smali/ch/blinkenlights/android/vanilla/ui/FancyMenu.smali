.class public Lch/blinkenlights/android/vanilla/ui/FancyMenu;
.super Ljava/lang/Object;
.source "FancyMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/blinkenlights/android/vanilla/ui/FancyMenu$Adapter;,
        Lch/blinkenlights/android/vanilla/ui/FancyMenu$Sheet;,
        Lch/blinkenlights/android/vanilla/ui/FancyMenu$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lch/blinkenlights/android/vanilla/ui/FancyMenu$Callback;

.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lch/blinkenlights/android/vanilla/ui/FancyMenu$Callback;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->mCallback:Lch/blinkenlights/android/vanilla/ui/FancyMenu$Callback;

    .line 75
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->mItems:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lch/blinkenlights/android/vanilla/ui/FancyMenu;)Lch/blinkenlights/android/vanilla/ui/FancyMenu$Callback;
    .locals 0

    .line 43
    iget-object p0, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->mCallback:Lch/blinkenlights/android/vanilla/ui/FancyMenu$Callback;

    return-object p0
.end method

.method private addInternal(IIILjava/lang/CharSequence;Z)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;
    .locals 2

    .line 134
    new-instance v0, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;-><init>(Landroid/content/Context;I)V

    .line 135
    invoke-virtual {v0, p3}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setIcon(I)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    .line 136
    invoke-virtual {v0, p4}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setTitle(Ljava/lang/CharSequence;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    .line 137
    invoke-virtual {v0, p5}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setIsSpacer(Z)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    .line 139
    :goto_0
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_0

    .line 140
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->mItems:Ljava/util/ArrayList;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    :cond_0
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private assembleAdapter(Ljava/util/ArrayList;)Lch/blinkenlights/android/vanilla/ui/FancyMenu$Adapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;",
            ">;>;)",
            "Lch/blinkenlights/android/vanilla/ui/FancyMenu$Adapter;"
        }
    .end annotation

    .line 153
    new-instance v0, Lch/blinkenlights/android/vanilla/ui/FancyMenu$Adapter;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lch/blinkenlights/android/vanilla/ui/FancyMenu$Adapter;-><init>(Lch/blinkenlights/android/vanilla/ui/FancyMenu;Landroid/content/Context;I)V

    .line 155
    invoke-static {}, Lch/blinkenlights/android/vanilla/ThemeHelper;->usesHoloTheme()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 156
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 157
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    if-nez v1, :cond_2

    .line 158
    invoke-virtual {v3}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->isSpacer()Z

    move-result v4

    if-nez v4, :cond_1

    .line 159
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public add(IIII)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;
    .locals 7

    .line 96
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    .line 97
    invoke-direct/range {v1 .. v6}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->addInternal(IIILjava/lang/CharSequence;Z)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public addSpacer(I)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v2, p1

    .line 120
    invoke-direct/range {v0 .. v5}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->addInternal(IIILjava/lang/CharSequence;Z)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setHeaderTitle(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public show(Landroid/view/View;FF)V
    .locals 2

    .line 174
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->mContext:Landroid/content/Context;

    sget p2, Lch/blinkenlights/android/vanilla/R$style;->BottomSheetDialog:I

    invoke-static {p1, p2}, Lch/blinkenlights/android/vanilla/ThemeHelper;->getThemeResource(Landroid/content/Context;I)I

    move-result p1

    .line 175
    new-instance p2, Lch/blinkenlights/android/vanilla/ui/FancyMenu$Sheet;

    iget-object p3, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, p3, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenu$Sheet;-><init>(Lch/blinkenlights/android/vanilla/ui/FancyMenu;Landroid/content/Context;I)V

    .line 176
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->assembleAdapter(Ljava/util/ArrayList;)Lch/blinkenlights/android/vanilla/ui/FancyMenu$Adapter;

    move-result-object p1

    .line 177
    new-instance p3, Lch/blinkenlights/android/vanilla/ui/FancyMenu$1;

    invoke-direct {p3, p0, p1, p2}, Lch/blinkenlights/android/vanilla/ui/FancyMenu$1;-><init>(Lch/blinkenlights/android/vanilla/ui/FancyMenu;Lch/blinkenlights/android/vanilla/ui/FancyMenu$Adapter;Lch/blinkenlights/android/vanilla/ui/FancyMenu$Sheet;)V

    .line 187
    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 188
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 189
    invoke-virtual {v0, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 p1, 0x0

    .line 190
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 192
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenu;->mTitle:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 193
    invoke-virtual {p2, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 194
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    return-void
.end method
