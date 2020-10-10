.class Landroid/support/iosched/tabs/SlidingTabLayout$InternalViewPagerListener;
.super Ljava/lang/Object;
.source "SlidingTabLayout.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/iosched/tabs/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalViewPagerListener"
.end annotation


# instance fields
.field private mScrollState:I

.field final synthetic this$0:Landroid/support/iosched/tabs/SlidingTabLayout;


# direct methods
.method private constructor <init>(Landroid/support/iosched/tabs/SlidingTabLayout;)V
    .locals 0

    .line 263
    iput-object p1, p0, Landroid/support/iosched/tabs/SlidingTabLayout$InternalViewPagerListener;->this$0:Landroid/support/iosched/tabs/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/iosched/tabs/SlidingTabLayout;Landroid/support/iosched/tabs/SlidingTabLayout$1;)V
    .locals 0

    .line 263
    invoke-direct {p0, p1}, Landroid/support/iosched/tabs/SlidingTabLayout$InternalViewPagerListener;-><init>(Landroid/support/iosched/tabs/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 289
    iput p1, p0, Landroid/support/iosched/tabs/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    .line 291
    iget-object v0, p0, Landroid/support/iosched/tabs/SlidingTabLayout$InternalViewPagerListener;->this$0:Landroid/support/iosched/tabs/SlidingTabLayout;

    invoke-static {v0}, Landroid/support/iosched/tabs/SlidingTabLayout;->access$400(Landroid/support/iosched/tabs/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Landroid/support/iosched/tabs/SlidingTabLayout$InternalViewPagerListener;->this$0:Landroid/support/iosched/tabs/SlidingTabLayout;

    invoke-static {v0}, Landroid/support/iosched/tabs/SlidingTabLayout;->access$400(Landroid/support/iosched/tabs/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .line 268
    iget-object v0, p0, Landroid/support/iosched/tabs/SlidingTabLayout$InternalViewPagerListener;->this$0:Landroid/support/iosched/tabs/SlidingTabLayout;

    invoke-static {v0}, Landroid/support/iosched/tabs/SlidingTabLayout;->access$200(Landroid/support/iosched/tabs/SlidingTabLayout;)Landroid/support/iosched/tabs/SlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 273
    :cond_0
    iget-object v0, p0, Landroid/support/iosched/tabs/SlidingTabLayout$InternalViewPagerListener;->this$0:Landroid/support/iosched/tabs/SlidingTabLayout;

    invoke-static {v0}, Landroid/support/iosched/tabs/SlidingTabLayout;->access$200(Landroid/support/iosched/tabs/SlidingTabLayout;)Landroid/support/iosched/tabs/SlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/iosched/tabs/SlidingTabStrip;->onViewPagerPageChanged(IF)V

    .line 275
    iget-object v0, p0, Landroid/support/iosched/tabs/SlidingTabLayout$InternalViewPagerListener;->this$0:Landroid/support/iosched/tabs/SlidingTabLayout;

    invoke-static {v0}, Landroid/support/iosched/tabs/SlidingTabLayout;->access$200(Landroid/support/iosched/tabs/SlidingTabLayout;)Landroid/support/iosched/tabs/SlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 277
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int v0, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 279
    :goto_0
    iget-object v1, p0, Landroid/support/iosched/tabs/SlidingTabLayout$InternalViewPagerListener;->this$0:Landroid/support/iosched/tabs/SlidingTabLayout;

    invoke-static {v1, p1, v0}, Landroid/support/iosched/tabs/SlidingTabLayout;->access$300(Landroid/support/iosched/tabs/SlidingTabLayout;II)V

    .line 281
    iget-object v0, p0, Landroid/support/iosched/tabs/SlidingTabLayout$InternalViewPagerListener;->this$0:Landroid/support/iosched/tabs/SlidingTabLayout;

    invoke-static {v0}, Landroid/support/iosched/tabs/SlidingTabLayout;->access$400(Landroid/support/iosched/tabs/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Landroid/support/iosched/tabs/SlidingTabLayout$InternalViewPagerListener;->this$0:Landroid/support/iosched/tabs/SlidingTabLayout;

    invoke-static {v0}, Landroid/support/iosched/tabs/SlidingTabLayout;->access$400(Landroid/support/iosched/tabs/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .line 298
    iget v0, p0, Landroid/support/iosched/tabs/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Landroid/support/iosched/tabs/SlidingTabLayout$InternalViewPagerListener;->this$0:Landroid/support/iosched/tabs/SlidingTabLayout;

    invoke-static {v0}, Landroid/support/iosched/tabs/SlidingTabLayout;->access$200(Landroid/support/iosched/tabs/SlidingTabLayout;)Landroid/support/iosched/tabs/SlidingTabStrip;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/support/iosched/tabs/SlidingTabStrip;->onViewPagerPageChanged(IF)V

    .line 300
    iget-object v0, p0, Landroid/support/iosched/tabs/SlidingTabLayout$InternalViewPagerListener;->this$0:Landroid/support/iosched/tabs/SlidingTabLayout;

    invoke-static {v0, p1, v1}, Landroid/support/iosched/tabs/SlidingTabLayout;->access$300(Landroid/support/iosched/tabs/SlidingTabLayout;II)V

    :cond_0
    const/4 v0, 0x0

    .line 302
    :goto_0
    iget-object v2, p0, Landroid/support/iosched/tabs/SlidingTabLayout$InternalViewPagerListener;->this$0:Landroid/support/iosched/tabs/SlidingTabLayout;

    invoke-static {v2}, Landroid/support/iosched/tabs/SlidingTabLayout;->access$200(Landroid/support/iosched/tabs/SlidingTabLayout;)Landroid/support/iosched/tabs/SlidingTabStrip;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 303
    iget-object v2, p0, Landroid/support/iosched/tabs/SlidingTabLayout$InternalViewPagerListener;->this$0:Landroid/support/iosched/tabs/SlidingTabLayout;

    invoke-static {v2}, Landroid/support/iosched/tabs/SlidingTabLayout;->access$200(Landroid/support/iosched/tabs/SlidingTabLayout;)Landroid/support/iosched/tabs/SlidingTabStrip;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne p1, v0, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    :cond_2
    iget-object v0, p0, Landroid/support/iosched/tabs/SlidingTabLayout$InternalViewPagerListener;->this$0:Landroid/support/iosched/tabs/SlidingTabLayout;

    invoke-static {v0}, Landroid/support/iosched/tabs/SlidingTabLayout;->access$400(Landroid/support/iosched/tabs/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 306
    iget-object v0, p0, Landroid/support/iosched/tabs/SlidingTabLayout$InternalViewPagerListener;->this$0:Landroid/support/iosched/tabs/SlidingTabLayout;

    invoke-static {v0}, Landroid/support/iosched/tabs/SlidingTabLayout;->access$400(Landroid/support/iosched/tabs/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_3
    return-void
.end method
