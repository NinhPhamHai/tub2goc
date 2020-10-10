.class public Lch/blinkenlights/android/vanilla/BottomBarControls;
.super Landroid/widget/LinearLayout;
.source "BottomBarControls.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field private mArtist:Landroid/widget/TextView;

.field private final mContext:Landroid/content/Context;

.field private mControlsContent:Landroid/widget/LinearLayout;

.field private mCover:Landroid/widget/ImageView;

.field private mParentClickConsumer:Landroid/view/View$OnClickListener;

.field private mParentMenuConsumer:Landroid/app/Activity;

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mSearchView:Landroid/widget/SearchView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mContext:Landroid/content/Context;

    return-void
.end method

.method private dpToPx(I)I
    .locals 1

    .line 306
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float v0, v0, p1

    float-to-int p1, v0

    return p1
.end method

.method private getImageButton(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;
    .locals 2

    .line 262
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 263
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    sget p1, Lch/blinkenlights/android/vanilla/R$drawable;->unbound_ripple_light:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    return-object v0
.end method

.method private menuMargin()Z
    .locals 1

    .line 296
    invoke-static {}, Lch/blinkenlights/android/vanilla/ThemeHelper;->usesHoloTheme()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private styleSearchView(Landroid/view/View;I)V
    .locals 2

    if-eqz p1, :cond_2

    .line 278
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 279
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 280
    :cond_0
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 281
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    .line 282
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 283
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 284
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 285
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lch/blinkenlights/android/vanilla/BottomBarControls;->styleSearchView(Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public enableOptionsMenu(Landroid/app/Activity;)V
    .locals 6

    .line 154
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mParentMenuConsumer:Landroid/app/Activity;

    .line 156
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lch/blinkenlights/android/vanilla/R$drawable;->ic_menu_moreoverflow:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/BottomBarControls;->getImageButton(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;

    move-result-object p1

    .line 157
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/BottomBarControls;->menuMargin()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mContext:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-direct {v0, v1, p1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    :goto_0
    iput-object v0, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 158
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 161
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mParentMenuConsumer:Landroid/app/Activity;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 165
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 166
    :goto_1
    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v3

    const/4 v4, -0x1

    if-ge v2, v3, :cond_2

    .line 167
    invoke-interface {v0, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 168
    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 169
    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v5}, Lch/blinkenlights/android/vanilla/BottomBarControls;->getImageButton(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;

    move-result-object v5

    .line 170
    invoke-virtual {v5, v3}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 171
    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v3, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mControlsContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 177
    :cond_2
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 178
    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/BottomBarControls;->menuMargin()Z

    move-result v0

    const/4 v2, -0x2

    if-eqz v0, :cond_3

    const/16 v0, 0x24

    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/BottomBarControls;->dpToPx(I)I

    move-result v0

    goto :goto_2

    :cond_3
    const/4 v0, -0x2

    .line 180
    :goto_2
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mControlsContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 187
    new-instance p1, Landroid/view/View;

    iget-object v0, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 188
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 190
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/BottomBarControls;->menuMargin()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/BottomBarControls;->dpToPx(I)I

    move-result v1

    .line 191
    :cond_4
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mControlsContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 109
    instance-of v1, v0, Landroid/widget/PopupMenu;

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/BottomBarControls;->openMenu()V

    goto :goto_0

    .line 111
    :cond_0
    instance-of v1, v0, Landroid/view/MenuItem;

    if-eqz v1, :cond_1

    .line 112
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mParentMenuConsumer:Landroid/app/Activity;

    check-cast v0, Landroid/view/MenuItem;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mControlsContent:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mParentClickConsumer:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_2

    .line 116
    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .line 95
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mTitle:Landroid/widget/TextView;

    .line 96
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->artist:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mArtist:Landroid/widget/TextView;

    .line 97
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->cover:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mCover:Landroid/widget/ImageView;

    .line 98
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->search_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mSearchView:Landroid/widget/SearchView;

    .line 99
    sget v0, Lch/blinkenlights/android/vanilla/R$id;->content_controls:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mControlsContent:Landroid/widget/LinearLayout;

    .line 101
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mSearchView:Landroid/widget/SearchView;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lch/blinkenlights/android/vanilla/BottomBarControls;->styleSearchView(Landroid/view/View;I)V

    .line 103
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 122
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mParentMenuConsumer:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0, v0}, Lch/blinkenlights/android/vanilla/BottomBarControls;->showSearch(Z)Z

    .line 129
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public openMenu()V
    .locals 2

    .line 199
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mParentMenuConsumer:Landroid/app/Activity;

    if-nez v1, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 202
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCover(Landroid/graphics/Bitmap;)V
    .locals 1

    if-nez p1, :cond_0

    .line 231
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mCover:Landroid/widget/ImageView;

    sget v0, Lch/blinkenlights/android/vanilla/R$drawable;->fallback_cover:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mCover:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mParentClickConsumer:Landroid/view/View$OnClickListener;

    .line 137
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mControlsContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    return-void
.end method

.method public setSong(Lch/blinkenlights/android/vanilla/Song;)V
    .locals 2

    if-nez p1, :cond_0

    .line 243
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mTitle:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mArtist:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mCover:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 247
    :cond_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 248
    iget-object v1, p1, Lch/blinkenlights/android/vanilla/Song;->title:Ljava/lang/String;

    if-nez v1, :cond_1

    sget v1, Lch/blinkenlights/android/vanilla/R$string;->unknown:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 249
    :cond_1
    iget-object p1, p1, Lch/blinkenlights/android/vanilla/Song;->artist:Ljava/lang/String;

    if-nez p1, :cond_2

    sget p1, Lch/blinkenlights/android/vanilla/R$string;->unknown:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 250
    :cond_2
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mArtist:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public showSearch(Z)Z
    .locals 5

    .line 212
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq v0, p1, :cond_4

    .line 214
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mSearchView:Landroid/widget/SearchView;

    const/16 v3, 0x8

    if-eqz p1, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 215
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mControlsContent:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz p1, :cond_3

    .line 217
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p1, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    goto :goto_3

    .line 219
    :cond_3
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/BottomBarControls;->mSearchView:Landroid/widget/SearchView;

    const-string v2, ""

    invoke-virtual {p1, v2, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_4
    :goto_3
    return v0
.end method
