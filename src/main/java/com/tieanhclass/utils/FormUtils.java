package com.tieanhclass.utils;

import org.apache.commons.beanutils.BeanUtils;
import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.InvocationTargetException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class FormUtils {
    private static final Logger LOGGER = Logger.getLogger(FormUtils.class.getName());

    public static <T> T toModel(Class<T> tclass, HttpServletRequest request) {
        T obj = null;
        try {
            obj = tclass.getDeclaredConstructor().newInstance(); // Updated instantiation
            BeanUtils.populate(obj, request.getParameterMap());
        } catch (InstantiationException | IllegalAccessException | InvocationTargetException | NoSuchMethodException e) {
            LOGGER.log(Level.SEVERE, "Error populating model: " + e.getMessage(), e); // Logging instead of printing to console
        }
        return obj;
    }
}
