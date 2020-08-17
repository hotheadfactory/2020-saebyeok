import Vue from 'vue';
import VueRouter from 'vue-router';
import Feed from '../views/feed/Feed.vue';
import Post from '../views/post/Post.vue';
import Analysis from '../views/analysis/Analysis.vue';
import Diary from '../views/diary/Diary.vue';
import ArticleDetail from '../views/articleDetail/ArticleDetail.vue';
import Emotions from '../views/emotions/Emotions.vue';
// import Login from '../pages/login/Login.vue';
import Auth from '../views/Auth.vue';
import Header from '@/components/header/Header';
import EmotionsHeader from '@/components/header/EmotionsHeader';
import BottomNavigation from '@/components/footer/BottomNavigation';
import DetailPageHeader from '@/components/header/DetailPageHeader';

Vue.use(VueRouter);

const routes = [
  {
    path: '/feed',
    name: 'Feed',
    components: {
      default: Feed,
      header: Header,
      footer: BottomNavigation
    }
  },
  {
    path: '/feed/:articleId',
    name: 'ArticleDetail',
    components: {
      default: ArticleDetail,
      header: DetailPageHeader,
      footer: BottomNavigation
    }
  },
  {
    path: '/emotions',
    name: 'Emotions',
    components: {
      default: Emotions,
      header: EmotionsHeader
    }
  },
  {
    path: '/post/:emotionId',
    name: 'Post',
    components: {
      default: Post,
      header: EmotionsHeader,
      footer: BottomNavigation
    }
  },
  {
    path: '/my-page',
    redirect: '/my-page/analysis'
  },
  {
    path: '/my-page/analysis',
    name: 'Analysis',
    components: {
      default: Analysis,
      header: Header,
      footer: BottomNavigation
    }
  },
  {
    path: '/my-page/diary',
    name: 'Diary',
    components: {
      default: Diary,
      header: Header,
      footer: BottomNavigation
    }
  },
  // {
  //   path: '/',
  //   redirect: '/login'
  // },
  // {
  //   path: '/login',
  //   name: 'Login',
  //   component: Login
  // },
  // {
  //   path: '/sign-in',
  //   name: 'Login',
  //   components: {
  //     default: Login
  //   }
  // },
  {
    path: '/auth',
    name: 'Auth',
    components: {
      default: Auth
    }
  }
];

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes,
  // eslint-disable-next-line no-unused-vars
  scrollBehavior(to, from, savedPosition) {
    return { x: 0, y: 0 };
  }
});

export default router;
