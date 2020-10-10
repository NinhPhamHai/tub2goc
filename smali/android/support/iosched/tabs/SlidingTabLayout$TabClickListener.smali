.class Landroid/support/iosched/tabs/SlidingTabLayout$TabClickListener;
.super Ljava/lang/Object;
.source "SlidingTabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/iosched/tabs/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/iosched/tabs/SlidingTabLayout;


# direct methods
.method private constructor <init>(Landroid/support/iosched/tabs/SlidingTabLayout;)V
    .locals 0

    .line 312
    iput-object p1, p0, Landroid/support/iosched/tabs/SlidingTabLayout$TabClickListener;->this$0:Landroid/support/iosched/tabs/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/iosched/tabs/SlidingTabLayout;Landroid/support/iosched/tabs/SlidingTabLayout$1;)V
    .locals 0

    .line 312
    invoke-direct {p0, p1}, Landroid/support/iosched/tabs/SlidingTabLayout$TabClickListener;-><init>(Landroid/support/iosched/tabs/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 315
    :goto_0
    iget-object v1, p0, Landroid/support/iosched/tabs/SlidingTabLayout$TabClickListener;->this$0:Landroid/support/iosched/tabs/SlidingTabLayout;

    invoke-static {v1}, Landroid/support/iosched/tabs/SlidingTabLayout;->access$200(Landroid/support/iosched/tabs/SlidingTabLayout;)Landroid/support/iosched/tabs/SlidingTabStrip;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 316
    iget-object v1, p0, Landroid/support/iosched/tabs/SlidingTabLayout$TabClickListener;->this$0:Landroid/support/iosched/tabs/SlidingTabLayout;

    invoke-static {v1}, Landroid/support/iosched/tabs/SlidingTabLayout;->access$200(Landroid/support/iosched/tabs/SlidingTabLayout;)Landroid/support/iosched/tabs/SlidingTabStrip;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 317
    iget-object p1, p0, Landroid/support/iosched/tabs/SlidingTabLayout$TabClickListener;->this$0:Landroid/support/iosched/tabs/SlidingTabLayout;

    invoke-static {p1}, Landroid/support/iosched/tabs/SlidingTabLayout;->access$500(Landroid/support/iosched/tabs/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
