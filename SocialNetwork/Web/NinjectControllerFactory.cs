﻿using BusinessLogic.Implementations;
using BusinessLogic.Interfaces;
using Domain;
using Ninject;
using System;
using System.Configuration;
using System.Web.Mvc;
using System.Web.Security;

namespace Web
{
    public class NinjectControllerFactory : DefaultControllerFactory
    {
        private IKernel ninjectCernel;

        public NinjectControllerFactory()
        {
            ninjectCernel = new StandardKernel();
            AddBindings();
        }

        //извлекаем экземпляр контроллера для заданного контекста запроса и типа контроллера
        protected override IController GetControllerInstance(System.Web.Routing.RequestContext requestContext, Type controllerType)
        {
            return controllerType == null ? null : (IController)ninjectCernel.Get(controllerType);
        }

        //Определим все привязки
        private void AddBindings()
        {
            ninjectCernel.Bind<IUsersRepository>().To<EFUsersRepository>();
            ninjectCernel.Bind<IFriendsRepository>().To<EFFriendsRepository>();
            ninjectCernel.Bind<IFriendRequestsRepository>().To<EFFriendRequestsRepository>();
            ninjectCernel.Bind<IMessagesRepository>().To<EFMessagesRepository>();
            ninjectCernel.Bind<IWallMessagesRepository>().To<EFWallMessagesRepository>();
            ninjectCernel.Bind<IPhotosRepository>().To<EFPhotosRepository>();
            ninjectCernel.Bind<EFDbContext>().ToSelf().WithConstructorArgument(
                "connectionString",ConfigurationManager.ConnectionStrings[0].ConnectionString);
            ninjectCernel.Inject(Membership.Provider);
        }
    }
}