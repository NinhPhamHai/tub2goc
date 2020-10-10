.class public Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;
.super Ljava/lang/Object;
.source "FancyMenuItem.java"

# interfaces
.implements Landroid/view/MenuItem;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconRes:I

.field private mId:I

.field private mIntent:Landroid/content/Intent;

.field private mSpacer:Z

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->mContext:Landroid/content/Context;

    .line 45
    iput p2, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->mId:I

    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public expandActionView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGroupId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 69
    iget v0, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->mIconRes:I

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->mIconRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 71
    :cond_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 105
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .line 110
    iget v0, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->mId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOrder()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 64
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSpacer()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->mSpacer:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setActionProvider(Landroid/view/ActionProvider;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    return-object p0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic setActionView(I)Landroid/view/MenuItem;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setActionView(I)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 0

    return-object p0
.end method

.method public setActionView(I)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setAlphabeticShortcut(C)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    return-object p0
.end method

.method public setAlphabeticShortcut(C)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic setCheckable(Z)Landroid/view/MenuItem;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setCheckable(Z)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    return-object p0
.end method

.method public setCheckable(Z)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic setChecked(Z)Landroid/view/MenuItem;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setChecked(Z)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    return-object p0
.end method

.method public setChecked(Z)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic setEnabled(Z)Landroid/view/MenuItem;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setEnabled(Z)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    return-object p0
.end method

.method public setEnabled(Z)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic setIcon(I)Landroid/view/MenuItem;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setIcon(I)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    return-object p0
.end method

.method public bridge synthetic setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    return-object p0
.end method

.method public setIcon(I)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;
    .locals 0

    .line 82
    iput p1, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->mIconRes:I

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;
    .locals 0

    .line 76
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public bridge synthetic setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setIntent(Landroid/content/Intent;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;
    .locals 0

    .line 88
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public setIsSpacer(Z)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;
    .locals 0

    .line 58
    iput-boolean p1, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->mSpacer:Z

    return-object p0
.end method

.method public bridge synthetic setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setNumericShortcut(C)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    return-object p0
.end method

.method public setNumericShortcut(C)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic setShortcut(CC)Landroid/view/MenuItem;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setShortcut(CC)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    return-object p0
.end method

.method public setShortcut(CC)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;
    .locals 0

    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setShowAsActionFlags(I)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    return-object p0
.end method

.method public setShowAsActionFlags(I)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic setTitle(I)Landroid/view/MenuItem;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setTitle(I)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    return-object p0
.end method

.method public bridge synthetic setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setTitle(Ljava/lang/CharSequence;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    return-object p0
.end method

.method public setTitle(I)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;
    .locals 1

    .line 100
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setTitle(Ljava/lang/CharSequence;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;
    .locals 0

    .line 94
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public bridge synthetic setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic setVisible(Z)Landroid/view/MenuItem;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;->setVisible(Z)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;

    return-object p0
.end method

.method public setVisible(Z)Lch/blinkenlights/android/vanilla/ui/FancyMenuItem;
    .locals 0

    return-object p0
.end method
